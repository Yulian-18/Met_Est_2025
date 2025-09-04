data_sub <- subset(iris, Species %in% c("versicolor", "virginica"))
head(iris) #primeras filas
summary(iris) # Resumen estadistico
str(iris) # estructura de la base

# estadisticas descriptiva
tapply(data_sub$Petal.Length, data_sub$Species, summary)

# ¿Existe unadiferencia significativa en la media del largo de los petalos entre las especies versicolor y virginica?

var.test((Petal.Lenght) ~ Species, data = data_sub
t.test(Petal.Lenght ~ Species, data = data_sub, var.equal = FALSE) #welch
install.packages("effsize")
library(effsize)
cohen.d(Petal.Lenght ~ Species, data =data_sub)

boxplot(Petal.Lenght ~ Species, data = data_sub,
        col("pink","lightgreen"),
        main ="Comparacion del largo del petalo"
        
         