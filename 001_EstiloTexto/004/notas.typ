#import "@preview/hydra:0.6.2": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/tablem:0.3.0": tablem
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

= Tamaño de letras
Esta sección será tal vez la que más se nos pueda dificultar, introduciremos una serie de temas nuevos que tenerlos bien afianzandos nos supondrá un beneficio a largo plazo.

Primero comencemos con la teoría base de una etiqueta padre y una etiqueta hijo, supongamos que en nuestro HTML tenemos la siguiente estructura.
```HTML
<div>
  <p>Usando una etiqueta div para heredar cositas.</p>
</div>
```
Entonces nuestra etiqueta `div` es la etiqueta padre de la etiqueta `p`, esto en CSS tiene un efecto importante, dígamos que queremos cambiar el tamaño del texto, entonces nosotros usaremos dentro de nuestro `div` un tamaño de letra en especifíco que nos permitirá heredar en nuestra etiqueta `p` el tamaño.
```CSS
div {
    font-size: 20px;
}
```
Con la propiedad `font-size` decimos que todo lo que se encuentre dentro (obviamente texto) tendrá un tamaño especifíco de $20$ píxeles.
= Medidas
Como vimos anteriormente, tenemos medidas como píxeles, que es el estándar de medida que se utiliza en muchas propiedades donde es requerido asignar un tamaño a algo, pero también tenemos las siguientes medidas.
#tablem[
  | Unidad | Significado                                               | Ejemplo             | Comentario                                             |
  | ------ | --------------------------------------------------------- | ------------------- | ------------------------------------------------------ |
  | `px`   | píxeles                                                   | `font-size: 16px;`  | Tamaño fijo, muy usado.                                |
  | `em`   | relativo al tamaño de fuente del elemento padre           | `font-size: 1.5em;` | Escalable, útil para diseño flexible.                  |
  | `rem`  | relativo al tamaño base del documento (generalmente 16px) | `font-size: 1rem;`  | Consistente, recomendable para sitios responsivos.     |
  | `%`    | porcentaje del tamaño del elemento padre                  | `font-size: 120%;`  | También relativo.                                      |
  | `vw`   | relativo al ancho de la ventana del navegador             | `font-size: 2vw;`   | Hace que el texto cambie con el tamaño de la pantalla. |

]

Por ejemplo, si quisieramos tener el HTML anterior, podríamos tener $10$ píxeles seleccionando la etiqueta `p` de nuestro archivo CSS en el cual le agregaremos la medida de $0.5$ em, que nos devuelve $10$ px, esto porque el `div` ya tiene $20$ px, obteniendo devuelta la mitad de $20$ px por los $0.5$ em.

```CSS
div {
    font-size: 20px;
}

p {
    font-size: 0.5em;
}
```
