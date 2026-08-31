#!/data/data/com.termux/files/usr/bin/bash

# Desinstalador de Casata para Termux
# GPL v3, Aros Legendarios, David Baña Szymaniak

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Casata Uninstaller Help"
    echo "---------------------"
    echo ""
    echo "Los flags son:"
    echo "  --help (-h): muestra esta ayuda."
    echo "  --version (-v): muestra la versión instalada."
    echo "  --no-purge (-n): solo elimina el comando casata."
    echo "  --license (-l): muestra la licencia, proyecto y autor."
    echo "  --gpl (--gplv3): muestra el texto completo de la GPL v3."
    exit 0
fi

if [ "$1" = "--version" ] || [ "$1" = "-v" ]; then
    echo "La versión instalada de Casata es:"
    cat "$PREFIX/local/casata/VERSION"
    exit 0
fi

if [ "$1" = "--license" ] || [ "$1" = "-l" ]; then
    echo "Licencia GPL v3, Aros Legendarios, David Baña Szymaniak."
    exit 0
fi

if [ "$1" = "--gpl" ] || [ "$1" = "--gplv3" ]; then
    cat "$PREFIX/local/casata/LICENSE"
    exit 0
fi

echo "Eliminando router (comando casata)..."
rm -f "$PREFIX/bin/casata"

if [ "$1" != "--no-purge" ] && [ "$1" != "-n" ]; then
    echo "Eliminando instalación de Casata..."
    rm -rf "$PREFIX/local/casata/"
fi

echo ""
echo "----------------------------------------------------------------------------------"
echo "¡Casata desinstalado correctamente!"
