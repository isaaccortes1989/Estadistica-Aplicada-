set.seed(1)

z <- runif(100, min = 0, max = 1)  #GENERO 100 PROBABILIDADES - 100 PEDIDOS

length(z[z<0.3])                  # CANTIDAD DE "PISCOLA"
length(z[z>=0.3  & z<0.55])       # CANTIDAD DE "CERVEZA"
length(z[z>=0.55 & z<0.70])       # CANTIDAD DE "VINO"
length(z[z>=0.70 & z<0.80])       # CANTIDAD DE "TERREMOTO"
length(z[z>=0.80 & z<0.88])       # CANTIDAD DE "PISCO SOUR"
length(z[z>=0.88 & z<0.93])       # CANTIDAD DE "APEROL"
length(z[z>=0.93 & z<0.98])       # CANTIDAD DE "RONCOLA"
length(z[z>=0.98 & z<=1])         # CANTIDAD DE "MOJITO"


z[1:24]  <- c("PISCOLA")
z[25:54] <- c("CERVEZA")
z[55:68] <- c("VINO")
z[69:83] <- c("TERREMOTO")
z[84:92] <- c("PISCO SOUR")
z[93:96] <- c("APEROL")
z[97:99] <- c("RONCOLA")
z[100]   <- c("MOJITO")

table(z)

