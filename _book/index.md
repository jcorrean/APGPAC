---
title: "Introducción a la Analítica de Datos para la Gestión de Proyectos de Alta Complejidad"
author: 
- name: Juan C. Correa
  email: jcc@criticalcentrality.com
  affiliation: Critical Centrality Institute
date: "2023-12-30"
site: bookdown::bookdown_site
output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: TRUE
---
# Sobre el autor {-}
Juan C. Correa es venezolano, está casado y tiene un hijo. Es egresado de la Universidad Católica Andrés Bello como licenciado en psicología y magíster en metodología de las ciencias del comportamiento, y es doctor en ciencias de la Universidad Simón Bolívar de Venezuela. Su estancia postdoctoral fue en la Universidad de Economía y Negocios de Praga, en República Checa. Su experiencia docente se concentra en varias universidades de Colombia (en la Fundación Universitaria Konrad Lorenz, el Colegio de Estudios Superiores de Administración, Escuela Colombiana de Ingeniería Julio Garavito, Universidad del Rosario, Universidad de La Sabana) y Venezuela (en la Universidad Católica Andrés Bello, la Universidad Simón Bolívar, la Universidad Nacional Experimental Antonio José de Sucre). Ha sido invitado como conferencista en la Universidad de Economia y Negocios de Praga (República Checa), Universidad de Hamburgo (Alemania), Universidad de Granada (España), Universidad de Worcester (UK), Universidad de Norfolk (USA), Universidad Nacional de Colombia, Universidad Espíritu Santo (Ecuador), en la Sociedad Peruana de Psicometría (Perú), Universidad de las Américas (Chile), Universidad Quintana Roo, Universidad de Monterrey y Tecnológico de Monterrey (México), en el Colegio Raisoni de Ingeniería y el instituto tecnológico de Maharashtra, Universidad Mundial de la Paz (India). Ha participado y obtenido recursos financieros para la investigación en Venezuela, Colombia, República Checa e India. Su experiencia como consultor organizacional para empresas de varios sectores la ha combinado con una agenda de investigación que refleja sus intereses hacia el área de sistemas complejos, la ciencia abierta, la ciencia de datos conductuales y la analítica de datos para los negocios. Ha sido invitado como par-evaluador de cientos de artículos recibidos en decenas de revistas científicas indexadas en Web of Science o Scopus y en 2022 fue invitado como par-evaluador de proyectos de investigación y desarrollo para el área de economía y negocios organizada por la Fundación para la Ciencia y Tecnología del gobierno de Portugal. En 2023 fundó Critical Centrality Institute, una iniciativa concebida como tanque de pensamiento para ofrecer evidencia empírica sobre temas críticos de nuestra sociedad. 

# Prefacio {-}

Este libro ofrece una visión "actualizada" sobre la gestión o gerencia de proyectos, considerando las ventajas de la inteligencia artificial y la ciencia de datos para lidiar con la incertidumbre económica de nuestros tiempos. La Figura \@ref(fig:donde) ilustra en dónde debería estar situado el lector del presente libro. 

<div class="figure">
<img src="DONDE.png" alt="La Analítica de Datos para la Gestión de Proyectos de Alta Complejidad" width="100%" />
<p class="caption">(\#fig:donde)La Analítica de Datos para la Gestión de Proyectos de Alta Complejidad</p>
</div>

La organización de este libro sigue los elementos gráficos de la Figura \@ref(fig:donde). La primera parte del libro se titula <u>**Usted Está Aquí**</u> y en ella se brinda una síntesis conceptual y operativa para quienes no están familiarizados con las herramientas de inteligencia artificial y ciencias de datos que reemplazan a las tradicionales herramientas ofimáticas de Word, Excel y PowerPoint. El lector puede advertir que estamos en presencia de un cambio de paradigma en la manera como los seres humanos gestionamos proyectos, debido en parte a los cambios de nuestra sociedad en permanente cambio y evolución. 

La historia de las herramientas de cálculo o cómputo brindan una excelente comprensión de cómo ciertos dispositivos fueron útiles durante un momento específico y luego se reemplazaron por otros de mejor funcionamiento. Piense por ejemplo en la sucesión que ocurrió entre el ábaco, la calculadora mecánica, la calculadora electrónica, y las computadoras personales. Las herramientas ofimáticas tradicionales podrían verse como ábacos o calculadoras mecánicas. En cambio las herramientas conocidas como "_Entornos de Desarrollo Integrado_" (IDE por sus siglas en inglés) podrían verse como otro tipo de herramientas con un mejor vínculo con los algoritmos de inteligencia artificial y ciencia de datos disponibles en lenguajes de programación como R y Python. Estos lenguajes proveen las herramientas computacionales fundamentales para desarrollar aplicaciones que pueden transformar radicalmente la manera como gestionamos nuestros proyectos. 

Llegados a este punto, muchos lectores podrán pensar que con Microsoft Copilot y su inclusión en herramientas ofimáticas como Microsoft 365, las herramientas como Word, Excel y PowerPoint seguirán manteniendo su vigencia hasta cierto punto. Las herramientas ofimáticas no van a desaparecer, pero su uso sí va a quedar más restringido, pues la incertidumbre de nuestros tiempos exige que el profesional del siglo XXI cuente con una mayor y mejor formación científica, en la cual los conceptos teóricos se plasmen en herramientas tecnológicas cuya aplicación nos permita comprender, explicar, predecir, y pronosticar, con cierto margen razonable de confianza, lo que puede ocurrir en un entorno lleno de incertidumbre.     

El lector de este libro, podrá comprobar dos características que le hacen justicia a la Figura \@ref(fig:donde). Primero, para la producción de este libro se reemplazaron las herramientas de Word, Excel y PowerPoint, con una emergente y (potencialmente) más versátil herramienta llamada Rmarkdown.

En la actualidad, Rmarkdown es una de las herramientas favoritas para científicos de datos y expertos en inteligencia artificial. Según @Xie2018 RMarkdown ofrece un marco de referencia útil para la documentación de proyectos relacionados con la ciencia de datos en los que se necesita guardar y ejecutar syntaxis o algoritmos cuyos resultados se integren a informes de alta calidad que luego se pueden compartir con una audiencia. RMarkdown se diseñó para facilitar la reproducción de resultados de una manera fácil y ágil que admite docenas de formatos de salida estáticos y dinámicos/interactivos.  A ver
