#!/bin/bash

ROLE=$1
OUTPUT=$2
LANG=$3

if [ -z "$LANG" ]; then
  LANG="es"
fi

if [ -z "$ROLE" ] || [ -z "$OUTPUT" ]; then
  echo "Uso: ./build_cv.sh data_analytics cv_data_analytics [es|en]"
  exit 1
fi

if [ ! -f "roles/$LANG/$ROLE.md" ]; then
  echo "❌ No existe roles/$LANG/$ROLE.md"
  exit 1
fi

if [ ! -f "sections/$LANG/header.md" ] || [ ! -f "sections/$LANG/footer.md" ]; then
  echo "❌ Faltan secciones en sections/$LANG/"
  exit 1
fi

mkdir -p build exports

pandoc \
  sections/$LANG/header.md \
  roles/$LANG/$ROLE.md \
  sections/$LANG/footer.md \
  --template=template_cv.html \
  --metadata lang=$LANG \
  -o build/$OUTPUT.html

if [ $? -ne 0 ]; then
  echo "❌ Falló la generación HTML con pandoc"
  exit 1
fi

echo "✔ HTML generado: build/$OUTPUT.html"
