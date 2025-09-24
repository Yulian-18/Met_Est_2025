#=====================
# Correlacion de pearson
# Datos del geyser old Faithful
# 24/09/2025
#====================

data("faithful")

plot(faithful$waiting, faithful$eruptions, 
     xlab ="Tiempo de espera (min)",
     ylab = "Erupcion (min)",
     col = "indianred", 
     pch =20)
     
     #correlacionar las dos variables

shapiro.test(faithful$eruptions)
shapiro.test(faithful$waiting)

# ======================================================
# pearson solo se utiliza cuando tenemos datos normales
# =====================================================
cor.test(faithful$waiting, faithful$eruptions, 
              method = "pearson")
     
                     
# ====================================================
# spearman se utiliza como contraparte para datos no normales
# ====================================================

cor.test(faithful$waiting, faithful$eruptions,
         method = "spearman")

