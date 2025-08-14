temperatura <- read.csv("C:/Users/Usuario.PC11/Downloads/temperatura.csv")
 View(temperatura)

head(temperatura) #primeras 6 filas
dim(temperatura) #numero de filas y columnas
names(temperatura) #nombre de las columnas
str(temperatura) #estructura del objeto

#Resumen estadistico
summary(temperatura)

#MODIFICAR NOMBRE DE COLUMNAS 
names(temperatura)             <- c("anio", "Ene", "Feb", "Mar", "Abr", "May",
                                    "Jun", "Jul", "Ago", "Sep", "Oct","Nov", "Dic")                                    


names(temperatura)

#crear columna media_anual con temperatura media anual 
temperatura$Ene
temperatura$Media_anual  <-rowMeans(temperatura[,2:13])
head(temperatura)
#Crear objeto con medias mensuales de temperatura
medias_mensuales  <-colMeans(temperatura[,2:13])
medias_mensuales
help("boxplot")

boxplot(temperatura$Ene,
        main="Temperatura de enero",
        ylab="°C",
        col="purple"
        )

datos_meses  <-temperatura[,2:13]
boxplot(datos_meses,
main="Temperatura",
ylab="°C",
col="lightgreen",
names= c ("Ene", "Feb", "Mar", "Abr", "May",
        "Jun", "Jul", "Ago", "Sep", "Oct",
        "Nov", "Dic"))

