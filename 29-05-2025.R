y <- read.csv("C:/Users/soporte/Desktop/Estadistica_aplicada/resistencia.csv")
y <- y[,1]

hist(y,freq=F,xlab="Resistencia de los envases plásticos",ylab="Densidad",main="")
box()

boxplot(y,hor=T,xlab="Resistencia de los envases plásticos")
summary(y)

library(moments)
skewness(y)
kurtosis(y)

install.packages("EnvStats")
library(EnvStats)

ks.test(y,"pnorm",mean=mean(y),sd=sd(y))

qqPlot(y, envelope = 0.95)

##NO SE RECHAZA LA HIPOTESIS DE NORMALIDAD##

#=======================#
#=====IC PARA MEDIA=====#
#=======================#

m_y  <- mean(y)
sd_y <- sd(y)
n    <- length(y)
# Nivel de confianza (por ejemplo 95%)
alpha <- 0.05
t_crit <- qt(1 - alpha/2, df = n - 1)

# Margen de error
error <- t_crit * sd_y / sqrt(n)

# Intervalo de confianza
IC_media <- c(m_y - error, m_y + error)
IC_media


t.test(y,mu=25,conf.level=0.95,alternative="two.sided") #h1: mu distinto de 25
t.test(y,mu=25,conf.level=0.95,alternative="greater")   #h1: mu mayor a 25
t.test(y,mu=25,conf.level=0.95,alternative="less")      #h1: mu menor a 25

#======================#
#=======IV Var ========#
#======================#

alpha <- 0.05
gl    <- n - 1  # grados de libertad

# Valores críticos de la distribución chi-cuadrado
chi_low <- qchisq(1 - alpha/2, df = gl)
chi_up  <- qchisq(alpha/2, df = gl)

# Estimación de la varianza muestral
s2 <- var(y)

# Intervalo de confianza para la varianza
IC_varianza <- c((gl * s2) / chi_low, (gl * s2) / chi_up)
IC_varianza

