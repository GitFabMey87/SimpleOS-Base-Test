#!/bin/bash
# Script de création d'un thème d'icônes SVG dans le répertoire courant
# Usage : ./create-theme.sh SimpleOs-0.1.1

if [ -z "$1" ]; then
  echo "Usage: $0 NomDuTheme"
  exit 1
fi

THEME_NAME="$1"
BASE_DIR="$PWD/$THEME_NAME"

echo "➡️ Création du dossier du thème : $BASE_DIR"
mkdir -p "$BASE_DIR/hicolor/scalable/apps"

# Fichier index.theme minimal
cat > "$BASE_DIR/index.theme" <<EOF
[Icon Theme]
Name=$THEME_NAME
Comment=Icônes personnalisées en SVG pour XFCE
Inherits=hicolor

[Directories]
hicolor/scalable/apps

[hicolor/scalable/apps]
Size=48
Context=Applications
Type=Scalable
EOF

# Icônes de base (vides pour l’instant)
ICONS=("web" "mail" "rss" "writer" "music" "video" "image" "social" "SLogo")

for icon in "${ICONS[@]}"; do
  touch "$BASE_DIR/hicolor/scalable/apps/$icon.svg"
done

# Permissions locales
chmod -R 755 "$BASE_DIR"
chmod 644 "$BASE_DIR/index.theme"
chmod 644 "$BASE_DIR/hicolor/scalable/apps/"*.svg

echo "✅ Thème $THEME_NAME créé dans $BASE_DIR"
echo "Ajoute ou remplace tes fichiers SVG dans : $BASE_DIR/hicolor/scalable/apps/"
