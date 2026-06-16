#!/nix/store/306znyj77fv49kwnkpxmb0j2znqpa8bj-bash-5.2p26/bin/bash

target="9d54da7584015647ba052173b84d45e8007eba94"

words=(
"8V2L"
"bny0"
"c4ZX"
"D8B3"
"FHl1"
"oiMO"
"PFbD"
"rmfX"
"SRSq"
"uqyw"
"v2Vb"
"X1Uy"
)

for word in "${words[@]}"; do
    hash=$(echo -n "$word" | sha1sum | awk '{print $1}')
    
    echo "$word -> $hash"
    
    if [ "$hash" == "$target" ]; then
        echo "Match found: $word"
        exit 0
    fi
done

echo "No match found"
