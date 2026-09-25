#!/bin/sh
# Fabrique le paquet d'installation de l'outil en ligne de commande.
#
# Xojo produit un dossier de six fichiers — le binaire et ses bibliothèques, toutes
# indispensables — là où l'on veut une seule commande. Le paquet range donc ce dossier
# dans /usr/local/libexec/xpackager et pose un lanceur de deux lignes dans
# /usr/local/bin : l'utilisateur tape « xpackagerbuild » et ne voit jamais les dylibs.
#
# Usage : ./make-cli-pkg.sh [--sign « Developer ID Installer: … »] [--out chemin.pkg]
set -e

ROOT="$(cd "$(dirname "$0")" && pwd)"
BUILD="$ROOT/Builds - XPackagerBuild/macOS Universal/xpackagerbuild"
IDENTIFIER="com.vdsc.xpackager.cli"
PREFIX="/usr/local"
LIBEXEC="$PREFIX/libexec/xpackager"
SIGN=""
OUT=""

while [ $# -gt 0 ]; do
  case "$1" in
    --sign) SIGN="$2"; shift 2 ;;
    --out)  OUT="$2"; shift 2 ;;
    -h|--help) sed -n '2,10p' "$0"; exit 0 ;;
    *) echo "Option inconnue : $1" >&2; exit 2 ;;
  esac
done

[ -x "$BUILD/xpackagerbuild" ] || {
  echo "Construisez d'abord XPackagerBuild.xojo_project dans Xojo (Projet ▸ Build)." >&2
  echo "Attendu : $BUILD/xpackagerbuild" >&2
  exit 1
}

VERSION="$("$BUILD/xpackagerbuild" --version | awk '{print $2}')"
[ -n "$VERSION" ] || VERSION="1.0"
[ -n "$OUT" ] || OUT="$ROOT/xpackagerbuild-$VERSION.pkg"

WORK="$(mktemp -d /tmp/xpackager-cli.XXXXXX)"
trap 'rm -rf "$WORK"' EXIT
STAGE="$WORK/racine"

# 1) L'outil et ses bibliothèques, hors du chemin, dans libexec.
mkdir -p "$STAGE$LIBEXEC" "$STAGE$PREFIX/bin"
# --noextattr : sans ça, dès que la destination n'accepte pas les attributs étendus, la
# copie sème des fichiers AppleDouble « ._ » que pkgbuild embarquerait tels quels.
ditto --noextattr --norsrc --noqtn "$BUILD" "$STAGE$LIBEXEC"
rm -rf "$STAGE$LIBEXEC/_CodeSignature"

# 2) Le lanceur, seul fichier visible dans le chemin de commandes.
cat > "$STAGE$PREFIX/bin/xpackagerbuild" <<'LAUNCHER'
#!/bin/sh
# Lanceur : le binaire vit avec ses bibliothèques dans libexec.
exec "/usr/local/libexec/xpackager/xpackagerbuild" "$@"
LAUNCHER
chmod 755 "$STAGE$PREFIX/bin/xpackagerbuild"

# 3) pkgbuild puis productbuild, comme le fait XPackager lui-même.
xattr -cr "$STAGE" 2>/dev/null || true
pkgbuild --root "$STAGE" \
         --identifier "$IDENTIFIER" \
         --version "$VERSION" \
         --install-location / \
         --ownership recommended \
         "$WORK/composant.pkg" >/dev/null

rm -f "$OUT"
if [ -n "$SIGN" ]; then
  productbuild --package "$WORK/composant.pkg" --sign "$SIGN" "$OUT" >/dev/null
else
  productbuild --package "$WORK/composant.pkg" "$OUT" >/dev/null
fi

echo "Paquet créé : $OUT"
echo "Contenu :"
pkgutil --payload-files "$OUT" | sed 's|^\.|  |'
