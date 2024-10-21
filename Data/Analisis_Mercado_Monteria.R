setwd("~/GitHub/APGPAC/Data")
library(readr)
EMPRESAS_REGISTRADAS_MONTERIA_2005_2019_20241011 <- read_delim("EMPRESAS_REGISTRADAS_MONTERIA_2005-2019_20241011_V2.csv",
                                                               delim = ";", escape_double = FALSE, trim_ws = TRUE)

Empresas=EMPRESAS_REGISTRADAS_MONTERIA_2005_2019_20241011


library(dplyr)#este paquete sirve para filtar

Monteria=Empresas %>%
          filter(`MUN-NOTIFICACION`=="23001 - MONTERIA")

library(agricolae)#para hacer tablas de frecuencias v cuantitativas
library(fdth)  #para hacer tablas de frecuencias cualitativas
tabla1=fdt_cat(Monteria$`CIIU-1`);tabla1

#tabla de frecuencias
table(Monteria$`CIIU-1`)

MonteriaActividades <- data.frame(table(Monteria$Actividad))
MonteriaActividadesDesc <- MonteriaActividades %>%
  arrange(desc(Freq))
MonteriaActividadesPrincipales <- head(MonteriaActividadesDesc, 10)


#diagrama barras

library(ggplot2)
# Assuming your data frame is named "MonteriasActividades" with variables "Var1" and "Freq"
ggplot(MonteriaActividadesPrincipales,
       aes(x = reorder(Var1, Freq, FUN = "mean"), y = Freq)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  coord_flip() +
  labs(title = "Diagrama de barras para Actividad Monteria",#titulo
       x = "Actividad",#titulo eje x
       y = "Frequencia" #titulo eje y
       ) +
  theme_minimal()
