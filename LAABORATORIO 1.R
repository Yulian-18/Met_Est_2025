
  # Gatos mensuales
  300 + 240 + 1527 + 400 + 1500 + 1833
celular <-300
celular
transporte <- 240
comestibles <- 1527
Gimnacio <- 400
otros <- 1833
Alquiler <- 1500
total <- transporte+comestibles+Gimnacio+otros+Alquiler+celular
semestre <- total*5
anual <- total*10

#valor absoluto
abs(10)
abs(-4)

#Raiz cuadrada
sqrt(9)

#Logaritmo natural
log(2)

2*9
4+5 # tambien se puede colocar un comentario

celular <-300
Celular <--300
CELULAR      <- 8000

celular+celular
CELULAR-celular
help(abs)
help(mean)
?abs
?mean
help.search("absolute")

gastos <- c(celular, transporte, comestibles, Gimnacio, Alquiler, otros)
gastos
barplot(gastos)
?sort
gastos_ord <- sort(gastos, decreasing = TRUE)
barplot(gastos_ord)
help("barplot")
barplot(gastos_ord, main = "Gastos mensuales",
        names.arg = c("OTROS", "COMESTIBLES", 
                      "Alquiler", "Gimnacio", 
                      "celular", "transporte"))

