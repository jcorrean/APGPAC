# Primer Caso: Midiendo las "habilidades blandas" en las ofertas de postgrado

En Colombia, las universidades publican en sus páginas web la oferta académica de cursos de especialización, maestría y doctorado. Esta oferta académica se dirigide como información para estudiantes interesados en estudiar un postgrado.

¿Puede el estudiante saber cómo un postgrado le va a ayudar a formar sus habilidades blandas de "creatividad", "solucionar problemas", o tener un "pensamiento crítico"? 

García-Chitiva y Correa [-@Garciachitiva2023] abordaron este problema usando el enfoque de Gestión de Proyectos de Alta Complejidad. Veamos en las siguientes líneas cómo se aplica este enfoque. 

Para empezar, García-Chitiva y Correa [-@Garciachitiva2023] se apoyaron en una metodología llamada *Redes Bipartitas* que se vincula con un área de las matemáticas llamada *Teoría de Grafos* 
<iframe width="100%" height="400" src="https://www.youtube.com/embed/lp-1rvtRYQg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

Aplicando las nociones explicadas en el video anterior, podemos mostrar la apariencia visual de una red bipartita para este ejemplo en algo como esto.

<div class="figure">
<img src="F1.png" alt="La Analítica de Datos para la Gestión de Proyectos de Alta Complejidad" width="100%" />
<p class="caption">(\#fig:donde)La Analítica de Datos para la Gestión de Proyectos de Alta Complejidad</p>
</div>

Los datos para representar una red bipartita entre programas de postgrado y habilidades blandas tendrían la estructura de una simple tabla con dos columnas. La primera columna muestra algunas habilidades blandas (que en inglés llamamos "Soft Skill") y en la segunda columna se muestran algunos programas de postgrados (que simplemente llamaremos "Program"). 


<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Soft Skill </th>
   <th style="text-align:left;"> Program </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:left;"> Critical Thinking </td>
   <td style="text-align:left;"> High-Energy Physics </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Critical Thinking </td>
   <td style="text-align:left;"> Data Science </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Critical Thinking </td>
   <td style="text-align:left;"> Waste Management </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Critical Thinking </td>
   <td style="text-align:left;"> Business Administration </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Problem Solving </td>
   <td style="text-align:left;"> High-Energy Physics </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Problem Solving </td>
   <td style="text-align:left;"> Data Science </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Problem Solving </td>
   <td style="text-align:left;"> Maxillofacial Dentistry </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Creativity </td>
   <td style="text-align:left;"> Data Science </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Creativity </td>
   <td style="text-align:left;"> Waste Management </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Curiosity </td>
   <td style="text-align:left;"> High-Energy Physics </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Negotiation </td>
   <td style="text-align:left;"> Business Administration </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Negotiation </td>
   <td style="text-align:left;"> Human Resources </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Empathy </td>
   <td style="text-align:left;"> Maxillofacial Dentistry </td>
  </tr>
  <tr>
   <td style="text-align:left;"> Empathy </td>
   <td style="text-align:left;"> Human Resources </td>
  </tr>
</tbody>
</table>

Lo divertido de este trabajo fue la manera cómo García-Chitiva y Correa [-@Garciachitiva2023] encontraron la manera de recolectar la información necesaria para armar una tabla como la anterior pero reflejando la realidad de la oferta académica presentada por 49 universidades colombianas que en total ofrecían 230 programas de postgrado, incluyendo especializaciones, maestrías y doctorados. 


```
## $res
## [1] TRUE
## 
## $type
##  [1] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
```

```
## logical(0)
```

<img src="05-Primer_Caso_files/figure-html/unnamed-chunk-2-1.png" width="672" />

