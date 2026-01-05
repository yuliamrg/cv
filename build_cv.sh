#!/bin/bash

ROLE=$1
OUTPUT=$2

if [ -z "$ROLE" ] || [ -z "$OUTPUT" ]; then
  echo "Uso: ./build_cv.sh data_analytics cv_data_analytics"
  exit 1
fi

if [ ! -f "roles/$ROLE.md" ]; then
  echo "❌ No existe roles/$ROLE.md"
  exit 1
fi

pandoc \
  sections/header.md \
  roles/$ROLE.md \
  sections/footer.md \
  --template=template_cv.html \
  -o build/$OUTPUT.html

echo "✔ HTML generado: build/$OUTPUT.html"
