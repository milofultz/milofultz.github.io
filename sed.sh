nl='\\n'

# Move all links down to new line
# Replace all hyphen list items with asterisk
# Replace all numbered list items with asterisk

for file in *.gmi; do
  start=$(cat "$file")
  while true; do
  end=$(echo "$start" | sed -e 's/\([^[]*\)\[\([^]]*\)\](\([^)]*\))\(.*\)/\1\2\4 ¡=> \3 \2¡/' | sed -e 's/^- /\* /' | sed -e 's/^[[:digit:]]\{1,\}\. /\* /')
    if [ "$start" == "$end" ]; then
      echo "$end" | \
        sed -e 's/\([^[]*\)\[\([^]]*\)\](\([^)]*\))\(.*\)/\1\2\4 =====> \3 \2====/' | \
        tr '¡' '\n' \
        > "${file}"
      break
    fi
    start="$end"
  done
done

