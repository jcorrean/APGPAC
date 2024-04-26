library(readxl)
PAA_2024 <- read_excel("Data/PAA-2024.xlsx")
unique(PAA_2024$`Nombre del responsable`)
PAA_2024$`Nombre del responsable` <- tolower(PAA_2024$`Nombre del responsable`)
unique(PAA_2024$`Nombre del responsable`)
unique(PAA_2024$Ubicación)
variable.names(PAA_2024)

Responsable_Ubicacion <- na.omit(PAA_2024[c(14,15)])

Responsable_Ubicacion$Ubicación <- sub(".*- ", "", Responsable_Ubicacion$Ubicación)
Responsable_Ubicacion$`Nombre del responsable` <- gsub("i", "í", Responsable_Ubicacion$`Nombre del responsable`)

unique(Responsable_Ubicacion$`Nombre del responsable`)
unique(Responsable_Ubicacion$Ubicación)


library(igraph)
bn2 <- graph.data.frame(Responsable_Ubicacion,directed=FALSE)
bipartite.mapping(bn2)
V(bn2)$type <- bipartite_mapping(bn2)$type
V(bn2)$color <- ifelse(V(bn2)$type, "red", "green")
V(bn2)$shape <- ifelse(V(bn2)$type, "circle", "square")
V(bn2)$size <- sqrt(igraph::betweenness(bn2))
E(bn2)$color <- "lightgrey"
plot(bn2, layout = layout_in_circle)

bn2.pr <- bipartite.projection(bn2)
Responsables <- bn2.pr$proj2
Ciudades <- bn2.pr$proj1

Importantes1 <- degree(Responsables)
Importantes2 <- degree(Ciudades)

Importantes1
