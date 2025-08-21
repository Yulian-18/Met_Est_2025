# Laboratorio Semana 3
# 20/08/2025
# Yulian A Gaona Casas


# Importar datos ----------------------------------------------------------

Temp  <-read.csv("temperatura.csv" , header = T)
Temp  <- read.csv("Data/Medias_temp.csv", header = T)
# Graficar datos ----------------------------------------------------------


# Ingresar datos de manera manual -----------------------------------------
edad  <- c(18, 19, 18, 18, 25, 19, 18, 18, 18, 17, 19,
           19, 18, 17, 19, 18, 19, 19)
alumno <-seq(1,18,1)

info <- data.frame(alumno, edad)

info$Altura <- c(174, 174, 170, 160, 158, 155, 188,
                  170, 175, 170, 172, 170, 174, 180,
                  158, 161, 188, 164)

# Graficar datos ----------------------------------------------------------
boxplot(info$Altura,
        # col sirve para colorear la grafica 
        col="red",
        # Main sirve para poner un titulo
        main= "clase 3 semestre")
colores=c("yellow","brown","pink")
boxplot(datos_meses,
        col=colores)
# Estadisticas descriptivas -----------------------------------------------


# crear tres parcelas de 10 datos de cada uno  ----------------------------
url <- "https://repodatos.atdt.gob.mx/api_update/senasica/actividades_inspeccion_movilizacion/29_
actividades-inspeccion-movilizacion.csv"
inspeccion <-read.csv(url)
head(inspeccion)
senasica <-read.csv(prof_url_2)
head(senacisa)

head(conjunto) # muestra las primeras seis filas de laBD
library(repmis) # No olvidar cargar la paquetería
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

head(conjunto) # muestra las primeras seis filas de la BD
library(readr)
file <- paste0("https://raw.githubusercontent.com/mgtagle/",
               "202_Analisis_Estadistico_2020/master/cuadro1.csv")
inventario <- read_csv(file)



