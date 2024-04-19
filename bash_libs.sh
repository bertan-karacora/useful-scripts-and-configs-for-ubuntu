if [ -d ~/useful-scripts-and-configs-ais/libs ]; then
    for lib in ~/useful-scripts-and-configs-ais/libs/*; do
        if [ -f "$lib" ]; then
            . "$lib"
        fi
    done
fi
