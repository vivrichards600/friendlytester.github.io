for file in *.html; do
    mv "$file" "`basename "$file" .html`.md"
done