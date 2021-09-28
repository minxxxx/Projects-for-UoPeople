#Checks if the values are divisible by one another
def is_divisible(x, y):
    return x % y == 0
#Checks if the values are a power of one another
def is_power(x, y):
    #Checks if the values given are the same
    if x == y:
        return True
    #Checks if the second value given is 1
    elif y == 1:
        return True
    #Checks if the values are divisible by one another and then calls itself recursively
    elif is_divisible(x, y):
        return is_power(x, y-1)
    #If no to all the above returns False
    else:
        return False
