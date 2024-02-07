count=0
selection=0

for d in *; do
    echo $d
    for file in "$d"/*; do
        if [ -f "$file" ]; then
            ((count++))
            if [ $(( $RANDOM % 5 )) -eq 0 ]; then
                echo "$file"
                ((selection++))
            fi
        fi
    done
done

echo "count: " $count
echo "selection: " $selection