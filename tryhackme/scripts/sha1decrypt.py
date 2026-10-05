import hashlib

target = "9d54da7584015647ba052173b84d45e8007eba94"

with open("wordlist.txt", "r", encoding="latin-1") as f:
    for word in f:
        word = word.strip()

        candidates = [
            word,
            word.lower(),
            word.upper(),
            word.capitalize()
        ]

        for candidate in candidates:
            if hashlib.sha1(candidate.encode()).hexdigest() == target:
                print("Found:", candidate)
                exit()

print("Not found")
