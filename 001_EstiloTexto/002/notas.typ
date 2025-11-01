#import "@preview/hydra:0.6.2": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#show: codly-init.with()
#set page(paper: "a5", margin: (y: 4em), numbering: "1.", header: context {
  if calc.odd(here().page()) {
    align(right, emph(hydra(1)))
  } else {
    align(left, emph(hydra(1)))
  }
  line(length: 100%)
})
#set heading(numbering: "1.1")
#show heading.where(level: 1): it => pagebreak(weak: true) + it
#set par(justify: true)
#set par(justify: true)

= Estilizando la etiqueta `p`

Ahora ya que tenemos la estructura básica de nuestro documento, comenzaremos por estudiar todas las forma de estilos que podemos darle a una etiqueta `p`. Primero veremos una estructurá básica de nuestro HTML que nos permitirá estructurar las etiquetas `p`, trabajaremos con el siguiente código básico.
```HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>002</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <p>
      Hola, este es mi primer párrafo con CSS. Aquí practico el selector por
      etiqueta.
    </p>
  </body>
</html>
```
Tenemos que tener una forma de indicar que en estos momentos vamos a empezar a modificar los estilos de la etiqueta `p` desde nuestro documento CSS, para ello usaremos algo llamado selector por etiqueta, en nuestro caso usaremos la siguiente sentencia en nuestro archivo CSS.

```CSS
p{

}
```
Dentro de las llaves es donde empezaremos a introducir todos los nuevos estilos que tendrá nuestra etiqueta `p`, además una cosa que deberíamos tener encuenta es que estamos seleccionando a todas las etiquetas `p` de nuestro documento HTML.
== Cambiando el color
Nosotros nos encargaremos desde nuestro archivo CSS empezar a modificar el documento, para ello comenzaremos con cambiarle el color al texto, podemos declarar de la siguiente forma:
```CSS
selector{
  propiedad: valor;
}
```
Esta es la sintaxis básica que debemos utilizar para declarar un nuevo estilo, ahora cambiaremos el color, por ende la primera propiedad que utilizaremos es conocida como `color` que en español es conocida como _color_ y sus valores son muy amplios, podríamos colocar solamente el nombre de un color en inglés o también declarar el RGB o Hexadecimal, son los más usados, existen más valores, pero nos centraremos en solamente estos tres.

Dígamos que nos gustaría cambiar el texto de nuestro código anterior de HTML en un color distinto, esto lo haremos usando nombres predefinidos en inglés.
```CSS
p {
  color: blue;
}
```
Podemos también usar los dos distintos valores, para nuestro segundo caso usaremos Hexadecimal.
```CSS
p {
  color: #C24027;
}
```
RGB nos ofrece una ventaja adicional: la posibilidad de controlar la opacidad mediante el canal alfa. Esto nos permite hacer los colores más o menos transparentes ajustando un solo parámetro.
```CSS
p {
  color: rgb(194, 64, 39);
}
```

Si queremos cambiar la opacidad recuerda que esto irá en un intervalo de $(0,1)$, donde 1 es el valor normal sin opacidad y cero el valor donde no podemos observar el texto.
```CSS
p {
  color: rgb(194, 64, 39,0.5);
}
```
