import math
from functools import reduce

#Exercicio 4.1
impar = lambda x : x%2!=0

#Exercicio 4.2
positivo = lambda x : x>0

#Exercicio 4.3
comparar_modulo = lambda x,y: abs(x)<abs(y)

#Exercicio 4.4
cart2pol = lambda cc_x,cc_y : (math.sqrt(cc_x**2 + cc_y**2), math.atan2(cc_y,cc_x))

#Exercicio 4.5
ex5 = lambda f,g,h : lambda x,y,z : h(f(x,y),g(y,z))

#Exercicio 4.6
def quantificador_universal(lista, f):
    if lista==[]:
        return True
    if f(lista[0]):
        return quantificador_universal(lista[1:], f)
    return False

#Exercicio 4.9
def ordem(lista, f):
    if not lista: return None
    return reduce(lambda ret,elem: elem if f(elem,ret) else ret, lista)

#Exercicio 4.10
def filtrar_ordem(lista, f):
    if not lista: return None
    n = ordem(lista,f)
    return (n, list(filter(lambda elem: elem!=n, lista)))

#Exercicio 5.2
def ordenar_seleccao(lista, ordem):
    if not lista: return None
    return sorted(lista, reverse=ordem(1,0)==1)