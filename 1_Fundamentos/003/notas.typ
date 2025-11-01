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

= Tipo de letra
Este es el código básico a utilizar HTML para nuestros estilos CSS.
```HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>003</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <p>Cambiando el estilo del tipo de letra desde CSS</p>
  </body>
</html>
```

En CSS, podemos cambiar el *tipo de letra* (la fuente tipográfica) que usa un texto.
Esto se logra usando la propiedad `font-family`.

```CSS
p{
  font-family: Arial;
}
```
La propiedad font-family define qué fuente tipográfica se utilizará para mostrar el texto.
Se puede asignar una o varias fuentes, separadas por comas.
El navegador usará la primera fuente disponible en el sistema del usuario.
Si no la encuentra, usará la siguiente, y así sucesivamente.
Ahora también nos encontraremos con nombre en los que los rodearemos con comillas o también solamente sin ellas pero con un guión de separación. En el caso de guión es en dependencia del nombre, muchos nombres se encuentran asignada con ese valor.

Caso con comillas, con guión y tipografía de respaldo.
```CSS
p{
  font-family: "Open Sans", Arial, sans-serif;
}
```
== Embebiendo tipo de letra externa
Ya hablamos antes de que siempre se encuentra en dependencia de la computadora que el usuario tenga ese tipo de letra, nosotros podemos evadir esto usando uno externo y cargarlo directamente en nuestro HTML y llamarlo en nuestro CSS, esto lo haremos escogiendo algún tipo de letra de la página web #link("https://fonts.google.com/"), una vez hayamos escogido algún tipo de letra debemos embeber esto en nuestro HTML y llamarlo como un valor en CSS, las primeras dos etiquetas HTML nuevas son solamente para decirle a la página web que antes de que cargue la página, ya debería encontrarse en esa ruta, para cargar más rápido los estilos y no se vea tarde reflejados los cambios.
```HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>003</title>
    <link rel="stylesheet" href="styles.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Momo+Trust+Display&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <p>Cambiando el estilo del tipo de letra desde CSS</p>
  </body>
</html>
```
Ahora llamaremos normalmente usando `clave: valor` en nuestro CSS.

```CSS
p {
    font-family: "Momo Trust Display";
}
```
== Importando tipo de letra en el CSS

Este proceso puede ser más fácil que el anterior, porque ya no tenemos que agregar las etiquetas anteriores, solamente tenemos que manejar una importación externa y colocarla en nuestro CSS de la siguiente manera.

```CSS
@import url('https://fonts.googleapis.com/css2?family=Momo+Trust+Display&display=swap');

p {
    font-family: "Momo Trust Display";
}
```
