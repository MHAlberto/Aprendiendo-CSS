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

= Conectando HTML con CSS

Empezaremos nuestra aventura con dos archivos esenciales, normalmente se repetirán en todas las carpetas, utilizaremos `index.html` lugar donde colocaremos todas las etiquetas HTML que vayamos utilizando y otro archivo donde utilizaremos nuestro CSS que lo llamaremos como `styles.css`, esto siguiendo los canones de la programación web.

Generaremos nuestro `index.html` e introduciremos una etiqueta nueva llamada `link` en donde podremos poner la ruta que tiene nuestro archivo CSS y poder trabajar en otro archivo todo nuestros estilos para inicializar nuestra  aventura, esto lo haremos en el HTML.

```HTML
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>001</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body></body>
</html>
```
Usaremos los atributos dentro de esta etiqueta conocidos por `rel` que viene del inglés llamado _relationship_ en español sería algo como _relación_, esto nos permite decirle que relación tiene el recurso que vamos enlazar con el documento, en nuestro caso será una hoja de estilos (_stylesheet_).

Por otro lado tenemos también el atributo `href` que significa en inglés _hypertext reference_ o en español como _dirección de recurso_, aquí le indicamos a nuestro archivo HTML donde se encuentra ubicado nuestro archivo CSS, es por ello que le pasamos el parámetro de nuestra ruta relativa.
