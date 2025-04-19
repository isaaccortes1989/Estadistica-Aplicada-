#===================================#
#====Distribucion Hipergeométrica===#
#===================================#

# Primer ejercicio

dhyper(2,m = 4,n = 11,k = 3)+dhyper(3,m = 4,n = 11,k = 3)

# Segundo ejercicio

dhyper(2,m = 7,n = 3,k = 3)+dhyper(3,m = 7,n = 3,k = 3)


#===================================#
#====Distribucion Exponencial=======#
#===================================#

#Primer ejercicio

pexp(2, rate = 1/3)

#Segundo ejercicio

pexp(0.7, rate = 1/0.5)-pexp(0.2, rate = 1/0.5)

#===================================#
#====Distribucion Weibull===========#
#===================================#

#Primer ejercicio 

1-pweibull(6000, shape = 2.5, scale = 5000)

#Segundo ejercicio

pweibull(900, shape = 3, scale = 1000)-pweibull(500, shape = 3, scale = 1000)

