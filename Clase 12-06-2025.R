#Ejemplo de Ingresos y Ahorros

x <- c(11,14,12,9,13,13,15,17,15,13)
y <- c(0.5,1.1,0.9,0.6,1.2,0.9,1.5,1.3,1.1,0.7)

modelo    <- lm(y~x)
residuos  <- residuals(modelo)
ajustados <- fitted(modelo)


mean(residuos) #media de los residuos 0

qqnorm(residuos)
qqline(residuos,col="red")

shapiro.test(residuos) #muestras pequeñas-medianas
ks.test(residuos,"pnorm",mean(residuos),sd(residuos)) #muestras medianas-grandes

# Probar homocedasticidad: Breusch-Pagan #

install.packages("lmtest")
library(lmtest)
bptest(modelo)


# Probar homocedasticidad: White #

install.packages("car")
library(car)
ncvTest(modelo)

#Prueba de Durbin-Watson: Autocorrelación#
library(lmtest)
dwtest(modelo) #no hay autocorrelacion

