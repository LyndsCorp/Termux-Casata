#!/data/data/com.termux/files/usr/bin/bash

# Instalador de Casata para Termux
# GPL v3, Aros Legendarios, David Baña Szymaniak

echo "Instalando Casata..."

cp usr/bin/casata "$PREFIX/bin/casata"
chmod +x "$PREFIX/bin/casata"

mkdir -p "$PREFIX/local"
cp -r usr/local/casata "$PREFIX/local/"

chmod +x "$PREFIX/local/casata/modules/"* 2>/dev/null || true

echo ""
echo "Casata instalado correctamente."
echo "Versión:"
cat "$PREFIX/local/casata/VERSION"
echo ""
echo "Prueba: casata"
