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

= Problema 1

Crea una página web donde tenga un `div` y dentro un título y una etiqueta `p` con algún contenido, donde `div` será la etiqueta padre y `p` la etiqueta hijo, e usa la medida de `em` en donde nos permita que si `div` tiene una medida de `20 px`, entonces la etiqueta `p` tenga la mitad.

```HTML
<div>
  <p>Usando la medida de em</p>
</div>
```
La pista para este problema es el siguiente código, en ambos tenemos que colocar la clave `font-size` de tal manera
que en alguna usemos una medida establecida y en la otra una distinta a la primera.
```CSS
div{
  propiedad: valor;
}
p{
  propiedad: valor;
}
```
