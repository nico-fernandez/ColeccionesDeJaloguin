# Colecciones de jalogüin

## Colecciones Bloques Polimorfismo Objetos

[![Build Status](https://travis-ci.org/wollok/coleccionesBloquesJaloguin.svg?branch=master)](https://travis-ci.org/wollok/coleccionesBloquesJaloguin)

**Se cuenta con información de Jalogüin, un juego donde los chicos intentarán obtener caramelos mediante sustos.**

![Mascaras](http://mla-s2-p.mlstatic.com/199011-MLA20469290685_102015-Y.jpg)

Para obtener caramelos, los chicos del barrio intentarán asustar al insensible Sr. Mirca, como se describe a continuación.
 
La capacidad de asustar de cada pibe depende de cómo es y lo que lleva puesto.
- Macaria tiene un nivel de ira que inicialmente es de 10, pero que se incrementa cuando la hacen enojar. Su capacidad de susto surge de sumar su nivel de ira al total de las capacidades de susto de los disfraces que lleva. 
- Pancracio asusta gritando “buuuu” y no le gusta llevar más de un disfraz. Su capacidad de susto es igual a la cantidad de 'u' de su grito típico más la capacidad de susto de su único disfraz. En un principio, usa la máscara de Drácula, ya que es su favorita. Cuando le piden que deje su disfraz no hace caso y se enoja, agregando 2 'u' a su grito. En cambio, si le dan otro disfraz deja de lado el que tenía antes y se pone el nuevo. 

Los disfraces disponibles son
- El traje de bruja asusta 10.
- La barba asusta 5 veces su longitud. La longitud de la barba puede variar, con el tiempo va perdiendo pelos y se acorta o la mamá de uno de los chicos le agrega pelos para que dure más.
- Una máscara aporta 3 veces su tamaño, que es siempre el mismo, si es de Drácula, exactamente 22 unidades si es de Frankenstein y un valor equivalente a la cantidad de promesas de campaña si es de un líder político. 

El distinguido Sr Mirca sólo se asusta cuando su tolerancia es menor que la capacidad de susto del niño, y da tantos caramelos como sea la diferencia entre su tolerancia y el nivel de susto de quien lo asuste. Su tolerancia inicial es de 21 unidades y disminuye en uno tras cada intento, satisfactorio o no.
- Pancracio guarda todos los caramelos que recibe
- A Macaria siempre se le cae la cuarta parte de los caramelos que recibe y guarda el resto. 

Existe una bandita llamada “Legión del terror”, conformado por chicos que asustan en grupo. Se sabe que:

Su capacidad de asustar es la suma de las capacidades de asustar de sus miembros.
Cuando intenta asustar, recibe caramelos, y se los queda su líder, es decir, el chico con mayor nivel de susto (Si hubiera dos niños con el mismo nivel de susto da igual quien se lleve los caramelos).
                                                                                               
En resumen, la aplicación debe poder hacer que el millonario Sr Mirca sea asustado por algún chico o la legión del terror entera, quienes si lo logran obtienen los caramelos correspondientes.

**Requerimientos:**
- Pedirle a un chico cualquiera que se ponga un traje o deje de usarlo.
- Macaria debe poder dejar de usar el traje que asusta menos, cuando lo decida.
- Modelar otro chico evitando modificar el código ya escrito. ¿Qué características tiene que tener para que esto sea posible?
- Agregar algunos chicos a la legión del terror. Los chicos nuevos entran en grupos de al menos una persona. El líder puede variar de acuerdo a quien tenga mayor capacidad de susto en el momento.
- Encontrar a los n chicos con mayor cantidad de caramelos del barrio.
- Averiguar si alguno de los chicos del barrio tiene un nivel de susto mayor a 42.
- A la legión no le gustan los copiones y exige que no haya integrantes con el mismo disfraz. Si dos integrantes tuvieran el mismo disfraz, ambos deberían dejar de usarlo. Acá puede ser útil la función flatten, que aplana una colección de colecciones, es decir, retorna una colección con los elementos de las sublistas. [ [1,2] , [3,1] ].flatten() retorna [1,2,3,1]. También el mensaje ‘asSet()’, que quita los repetidos de las colecciones, dejando una ocurrencia de cada elemento. [1,1,2,1,3].asSet() retorna #{1,2,3}.
	
**Modelar los objetos, desarrollar los métodos y plantear los tests que sean convenientes.**

