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
tapply(calidad$IE, calidad$Tratamiento, sd)
# Separar datos por tratamiento

df_Ctrl <- subset(calidad, Tratamiento =="Ctrl")
df_fert<-subset(calidad, Tratamiento =="Fert")

# ggplot revisar normalidad
par(mfrow = c(1, 2))
qqnorm(df_Ctrl$IE); qqline(df_Ctrl$IE)
qqnorm(df_fert$IE); qqline(df_fert$IE)



# prueba de normalidad

shapiro.test(df_Ctrl$IE)
shapiro.test(df_fert$IE)

# revisar homogenidad de varianzas
var.test(df_Ctrl$IE, df_fert$IE)
var.test(calidad$IE ~ calidad$Tratamiento)

#Aplicar la prueva de t, varianzas iguales
# dos colas =two.sided

t.test(calidad$IE~calidad$Tratamiento,
       var.equal =T,
       alternative = "two.sided")
cohens_efecto <-function(x, y) {
  n1 <- length(x); n2 <- length(y)
  sl <-sd(x); s2 <- sd(y)
  sp <- sqrt(((n1 - 1) * sl^2 +(n2 - 1) * s2^2) / (n1 + n2 - 2))
  (mean(x) - mean(y)) / sp
}
d_cal <- cohens_efecto(df_Ctrl$IE, df_fert$IE)

