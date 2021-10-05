def alphaseries():
    prefixes = 'JKLMNOPQ'
    suffix = 'ack'
    count = 0
    for letter in prefixes:
        count = count + 1
        print(count)
        if count == 6:
            print(letter + 'u' + suffix)
        elif count == 8:
            print(letter + 'u' + suffix)
        else:
            print(letter + suffix)
