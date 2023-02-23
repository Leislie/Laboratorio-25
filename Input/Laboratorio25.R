# Hecho con gusto por Leislie R. Manjarrez O.

# Laboratorio 25- Tidy data- Datos ordenados- Parte 1

# Objetivo: Introducción práctica a los datos ordenados (tidy data) y a las herramientas que provee el paquete tidyr

# En este ejercicio vamos a:
# 1. Cargar datos (tibbles)
# 2. Convertir nuestros tibbles en dataframe (para su exportacion)
# 3. Exportar dataframes originales
# 4. Pivotar tabla 4a
# 5. Exportar resultados (tabla pivotante)

# Pre-requisitos: instalar paqueteria
install.packages("tidyverse")

# Instalar paquete de datos
install.packages("remotes")
remotes::install_github("cienciadedatos/datos")
install.packages("datos")

# Llamar la libreria de tidyverse
library("tidyverse")

# Llamar libreria de datos
library("datos")

# Visualizar las tablas a utilizar (tabla1 a tabla4b). Ver datos como tibble
datos::tabla1
datos::tabla2
datos::tabla3
datos::tabla4a
datos::tabla4b

# Ver datos como dataframe
df1 <- data_frame(tabla1)
df2 <- data_frame(tabla2)
df3 <- data_frame(tabla3)
df4a <- data_frame(tabla4a)
df4b <- data_frame(tabla4b)

#Visualizar encabezados dataframe
head(df1)
head(df2)
head(df3)
head(df4a)
head(df4b)

# Exportar los dataframe originales
write.csv(df1, file = "df1.csv")
write.csv(df1, file = "df2.csv")
write.csv(df1, file = "df3.csv")
write.csv(df1, file = "df4a.csv")
write.csv(df1, file = "df4b.csv")

# Explicación de tibble
vignette("tibble")

# La mayoria de las funciones que usaras en este libro producen tibbles, ya que
# son una de las caracteristicas transversales de tidyverse. Si ya estas familiarizado
# con data.frame(), es importante que tomes en cuenta que tibble () hace menos cosas
# nunca cambia el tipo de los inputs (por ejemplo nunca convierte caracteres en factores),
# nunca cambia el nombre de las variables y nunca asigna nombres a las filas

# Empezar a ordenar datos con la tabla 4a (pivotar)
t4a_PIVOTANTE = tabla4a %>% 
  pivot_longer(cols = c ("1999", "2000"), names_to = "anio", values_to = "casos")

# Ordenar los datos de la tabla 4b (pivotar)
t4b_PIVOTANTE = tabla4b %>% 
  pivot_longer(cols = c ("1999", "2000"), names_to = "anio", values_to = "casos")

# Exportar resultado: tabla ordenada
write.csv(t4a_PIVOTANTE, file = "t4a_PIVOTANTE.csv")
write.csv(t4b_PIVOTANTE, file = "t4b_PIVOTANTE.csv")