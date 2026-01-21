with open("sample.txt", "r") as f:
    words = f.read().lower().split()
    word_count = {}

    for word in words:
        word_count[word] = word_count.get(word, 0) + 1

    for word, count in word_count.items():
        print(word, ":", count)
