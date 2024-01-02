# Primera Parte: Usted está aquí

La gerencia o dirección de proyectos se suele ejercer como una profesión que sigue los estándares o recomendaciones de buenas prácticas reconocidas por el Project Management Institute. Aunque la primera versión de estos estándares fue publicada por el Instituto Nacional de Estándares de los Estados Unidos en 1987, otras versiones han sido conocidas posteriormente hasta el 2017 cuando se publicó la sexta versión. Estos estándares incluyen un conjunto de conocimientos y prácticas que se pueden aplicar en la mayoría de los proyectos y que con un margen razonablemente alto de confianza pueden aumentar las posibilidades de culminar con éxito tales proyectos.

El término **Gerencia Ágil de Proyectos**, por su parte, suele estar muy vinculado a la gestión de proyectos especialmente dirigidos al desarrollo de software [@Dyba2014], desde que la **metodología SCRUM** fue acuñada por @Schwaber1997. La metodología SCRUM puede ser usada o aplicada a proyectos que no necesariamente suponen el desarrollo de un software o producto tecnológico, aunque sí requieran de software para mantener el control y gestionar las diferentes fases de un proyectos orientado al desarrollo de servicios, al desarrollo social y económico, o simplemente al estudio de **[sistemas complejos](https://complexityexplained.github.io/ComplexityExplained[Spanish].pdf)**. Para los profesionales que no han escuchado acerca de los sistemas complejos, puede resultar valioso advertir de entrada que lo complejo de un sistema no debe ser confundido con lo complicado que pueda resultar estudiarlo. 

## Complejidad y Gerencia de Proyectos. 

Los sistemas complejos son un objeto de estudio científico. Aunque existen múltiples institutos, laboratorios y universidades que brindan formación en sistemas complejos, sus esfuerzos suelen coincidir y divulgarse a través de una red profesional conocida como la [Sociedad de Sistemas Complejos](https://cssociety.org/home).

Según Hiroki Sayama [-@Sayama2015], los sistemas complejos son redes constituidas por una serie de componentes que interactúan entre sí, normalmente de forma no lineal que pueden surgir y evolucionar a través de la auto-organización (sin la intervención de un gerente o líder), y sin llegar a ser ni completamente predecibles ni completamente aleatorios, pueden mostrar comportamientos emergentes que solo resultan visibles cuando vemos al sistema cambiando la perspectiva de una escala local o microscópica a otra escala general o macroscópica.


Los sistemas complejos suelen caracterizarse por tener muchos componentes que interactúan de formas múltiples entre sí y potencialmente con su entorno. Estas partes forman redes de interacciones, a veces con unos pocos componentes involucrados en muchas interacciones. Las interacciones pueden
generar información nueva que complica el estudio individual de las partes o la predicción correcta de su futuro. Adicionalmente, los componentes de un
sistema pueden también ser nuevos sistemas, es decir, sistemas de sistemas
interdependientes entre sí. El mayor reto de las ciencias de la complejidad no es sólo apreciar las partes y sus conexiones, sino también entender cómo estas interacciones dan lugar al todo.



```r
library(broom)
library(kableExtra)

# Fit your regression model (replace lm() with your specific model)
model <- lm(mpg ~ cyl + hp + wt, data = mtcars)

# Tidy the regression results using broom
tidy_results <- tidy(model)

# Create a nicely formatted HTML table using kableExtra
html_table <- kable(tidy_results, format = "html", caption = "Regression Results") %>%
  kable_styling()

# Print the HTML table
html_table
```

<table class="table" style="margin-left: auto; margin-right: auto;">
<caption>(\#tab:unnamed-chunk-1)Regression Results</caption>
 <thead>
  <tr>
   <th style="text-align:left;"> term </th>
   <th style="text-align:right;"> estimate </th>
   <th style="text-align:right;"> std.error </th>
   <th style="text-align:right;"> statistic </th>
   <th style="text-align:right;"> p.value </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> (Intercept) </td>
   <td style="text-align:right;"> 38.7517874 </td>
   <td style="text-align:right;"> 1.7868640 </td>
   <td style="text-align:right;"> 21.687038 </td>
   <td style="text-align:right;"> 0.0000000 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> cyl </td>
   <td style="text-align:right;"> -0.9416168 </td>
   <td style="text-align:right;"> 0.5509164 </td>
   <td style="text-align:right;"> -1.709183 </td>
   <td style="text-align:right;"> 0.0984801 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> hp </td>
   <td style="text-align:right;"> -0.0180381 </td>
   <td style="text-align:right;"> 0.0118762 </td>
   <td style="text-align:right;"> -1.518838 </td>
   <td style="text-align:right;"> 0.1400152 </td>
  </tr>
  <tr>
   <td style="text-align:left;"> wt </td>
   <td style="text-align:right;"> -3.1669731 </td>
   <td style="text-align:right;"> 0.7405759 </td>
   <td style="text-align:right;"> -4.276365 </td>
   <td style="text-align:right;"> 0.0001995 </td>
  </tr>
</tbody>
</table>

## Nueva sección

Ahora vamos a ver cómo funciona con el siguiente código, pues debería funcionar.




