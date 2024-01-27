# Primer Caso: Las "habilidades blandas" en las Ofertas de Postgrado

En Colombia, las universidades publican en sus páginas web la oferta académica de cursos de especialización, maestría y doctorado. Esta oferta académica se dirigide como información para estudiantes interesados en estudiar un postgrado.

¿Puede el estudiante saber cómo un postgrado le va a ayudar a formar sus habilidades blandas de "creatividad", "solucionar problemas", o tener un "pensamiento crítico"? 

García-Chitiva y Correa [-@Garciachitiva2023] abordaron este problema usando el enfoque de Gestión de Proyectos de Alta Complejidad. Veamos en las siguientes líneas cómo se aplica este enfoque. 

Para empezar, García-Chitiva y Correa [-@Garciachitiva2023] se apoyaron en una metodología llamada *Redes Bipartitas* que se vincula con un área de las matemáticas llamada *Teoría de Grafos* 
<iframe width="100%" height="400" src="https://www.youtube.com/embed/lp-1rvtRYQg" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

Aplicando las nociones explicadas en el video anterior, podemos mostrar la apariencia visual de una red bipartita para este ejemplo en algo como esto.

<div class="figure">
<img src="F1.png" alt="La Analítica de Datos para la Gestión de Proyectos de Alta Complejidad" width="100%" />
<p class="caption">(\#fig:f1)La Analítica de Datos para la Gestión de Proyectos de Alta Complejidad</p>
</div>

En una red bipartita, uno está interesado en comprender cómo se conectan dos conjuntos disjuntos. La Figura \@ref(fig:f1) muestra un ejemplo hipotético con una lista no exhaustiva de habilidades interpersonales sugeridas por Scheerens, van der Werf y de Boer (2020) y una lista corta y no exhaustiva de estudios de posgrado. La conexión entre estos dos conjuntos se basa en cada vínculo representado como líneas grises rectas. En cada conjunto, cada entidad se conoce formalmente como nodo, y la adyacencia del nodo se refiere a un borde (es decir, una línea gris recta) que los conecta. La Figura \@ref(fig:f1) muestra que el número de conexiones varía para cada nodo en ambos conjuntos. Lo más importante es que no es necesario que la conexión entre estos dos conjuntos sea completa para afirmar que la capacitación en habilidades interpersonales está presente en un programa de posgrado. En otras palabras, el número de conexiones que cada habilidad blanda de la izquierda tiene con cada programa de posgrado de la derecha puede variar desde cero hasta su máximo, que es el total de programas de posgrado muestreados. Expliquemos. En la Figura \@ref(fig:f1), el pensamiento crítico es la habilidad blanda más conectada, ya que se conecta con cuatro programas (es decir, Doctorado en Física de Altas Energías, Maestría en Ciencia de Datos, Doctorado en Gestión de Residuos y Maestría en Administración de Empresas). La curiosidad es la menos conectada ya que solo tiene una conexión con un programa (es decir, Doctorado en Física de Altas Energías). En la Figura \@ref(fig:f1), la creatividad, la negociación y la empatía tienen el mismo número de conexiones, pero se conectan de manera diferente (por ejemplo, la negociación se conecta con la administración de empresas y la especialización en recursos humanos, mientras que la empatía se conecta con la odontología maxilofacial y los recursos humanos, y la creatividad está ligada con la ciencia de datos y la gestión de residuos). Así, en el análisis de redes bipartitas, el número de conexiones y quién se conecta con quién son el centro del estudio. Sin embargo, el trabajo de García-Chitiva y Correa [-@Garciachitiva2023] no se centra en el mero reconteo porque dicho recuento se plantea como un sistema en el que la centralidad de un nodo es relativa a la centralidad de otros nodos de la red. El sistema bajo escrutinio es entonces la información textual disponible en cada programa de posgrado de la muestra, tratado como un corpus que representa la comprensión institucional de los perfiles profesionales de los graduados. Además, el enfoque de red bipartita nos permite estimar la conectividad de cada programa. Así, el doctorado en física de altas energías y la maestría en ciencia de datos comparten el mismo número de conexiones (cada uno con tres enlaces), mientras que el resto de programas comparten el mismo número de conexiones (cada uno con dos enlaces).

Con la red bipartita, se pueden examinar las conexiones directas entre los nodos de un conjunto a la vez (es decir, habilidades blandas y estudios de posgrado). Para hacer esto, se pueden extraer y visualizar las proyecciones unipartitas de la red bipartita original, de la siguiente manera.




```
## [1] "igraph"
```

<img src="05-Primer_Caso_files/figure-html/unnamed-chunk-2-1.png" width="672" /><img src="05-Primer_Caso_files/figure-html/unnamed-chunk-2-2.png" width="672" />



Lo divertido de este trabajo fue la manera cómo García-Chitiva y Correa [-@Garciachitiva2023] encontraron una manera de recolectar la información necesaria para armar una tabla como la anterior pero reflejando la realidad de la oferta académica presentada por 49 universidades colombianas que en total ofrecían 230 programas de postgrado, incluyendo especializaciones, maestrías y doctorados. 


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


