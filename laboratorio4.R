#Pruevas de t
# caso de muestras independientes 
#MAGT
#27/08/2025

#importar datos de indice de calidad

calidad<- read.csv("calidad de plantas.csv", header= T)

calidad$Tratamiento <- as.factor(calidad$Tratamiento)

colores <- c("red", "blue")                                 
boxplot(calidad$IE ~ calidad$Tratamiento,
        col=colores,
        xlab="Tratamientos",
        ylab="indice calidad",
        ylim=c(0.4,1.2),
        main="Vivero Iturbide")                                 

# Estadistica descriptivas
#tapply sirve parab obtenerun valor cuando contamos
#con varios grupos

tapply(calidad$IE, calidad$Tratamiento, mean)
tapply(calidad$IE, calidad$Tratamiento, var)

# observamos que la varianza del grupo fert es 3 veces
#mas grande que el grupo control (ctrl)

# revisar el comportamiento de los datos
library("ggplot2")

ggplot(calidad, aes(x =IE, color =Tratamiento))+
  geom_density()

