def say(something='Something default'):
    print(something)

# TODO
# Definiți o nouă funcție care întoarce poziția primei
# apariții a celui de-al doilea șir în cadrul primului,
# dacă al doilea șir este un subșir al primului șir
# și -1 în caz contrar.

def subsir(haystack, needle):
    pos = haystack.find(needle)
    say(pos)

haystack = input("introduceti sirul mare: ")
needle = input("introduceti subsirul: ")
subsir(haystack, needle)