def itera():
    for i in range(5):
        yield i

i = itera()
for j in i:
    print(j)