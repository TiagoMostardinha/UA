import math

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
    if len(lista) == 1:
        return lista[0]
    
    menor = ordem(lista[1:],f)
    
    if f(lista[0], menor):
        return lista[0]
    return menor

#Exercicio 4.10
def filtrar_ordem(lista, f):
    pass

#Exercicio 5.2
def ordenar_seleccao(lista, ordem):
    pass
