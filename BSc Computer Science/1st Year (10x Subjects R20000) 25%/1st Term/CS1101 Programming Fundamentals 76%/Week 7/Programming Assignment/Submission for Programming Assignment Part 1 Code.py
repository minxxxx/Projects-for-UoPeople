def has_duplicates(string_input):
    d = []
    return_value = False
    for c in string_input:
        length = len(c)
        iterator = 0
        flag = 0
        while iterator < length:
            if c[iterator] in d:
                d.append(c[iterator])
                iterator += 1
                flag += 1
            else:
                d.append(c[iterator])
                iterator += 1
        if flag > 0:
            print(c + " has duplicates")
            return_value = True
        else:
            print(c + " has no duplicates")
        iterator = 0
        d = []
        flag = 0
    return return_value
