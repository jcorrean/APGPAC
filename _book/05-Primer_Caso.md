# Midiendo la importancia de las "habilidades blandas" en la oferta de postgrado

En un trabajo recientemente publicado, [@Cortes2016]


```r
library(knitr)
library(broom)
library(kableExtra)
setwd("Data")
data <- readr::read_csv("Data_Figure2.csv")
html_table <- kable(data, format = "html")%>%
  kable_styling()

# Print the HTML table
html_table
```

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



```r
library(igraph)
bn <- graph_from_data_frame(data, directed = FALSE)

bipartite.mapping(bn)
```

```
## $res
## [1] TRUE
## 
## $type
##  [1] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
```

```r
V(bn)$type <- bipartite_mapping(bn)$type
V(bn)$color <- ifelse(V(bn)$type, "#FF671F", "#046A38")
V(bn)$shape == "circle" 
```

```
## logical(0)
```

```r
V(bn)$labelcolor <- ifelse(V(bn)$type, "#FF671F", "#046A38")
E(bn)$color <- "#06038D"
E(bn)$width <- 1.5


layout <- layout_as_bipartite(bn)
rotated_layout <- cbind(layout[, 2], -layout[, 1])  # Swap x and y coordinates and negate y
plot(bn, vertex.label = V(bn)$name, layout = rotated_layout, main = "",
     vertex.label.color = V(bn)$labelcolor, 
     vertex.color = "black",
     edge.lty = E(bn)$linetype, vertex.shape = "none")
```

<img src="05-Primer_Caso_files/figure-html/unnamed-chunk-2-1.png" width="672" />

