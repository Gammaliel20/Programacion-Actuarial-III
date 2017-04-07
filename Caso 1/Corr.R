setwd("~/GitHub/Programacion-Actuarial-III/")

corr <- function(directorio, horizonte = 0){
    setwd("~/GitHub/Programacion-Actuarial-III/")
    
    source("completos.R")
    gamma1 <- completos(directorio)
    gamma2 <- gamma1[gamma1["dul"] > horizonte, ] $id
    
    gamma3 <- numeric()
    
    for(i in cat2) {
        DIRF <- read.csv(paste(directorio, "/", formatC(i, width = 3, flag = "0",".csv"), sep = ""))
        gamma4 <- DIRF[complete.cases(DIRF), ]
        gamma3 <- c(gamma3, cor(gamma4$sulfate, gamma4$nitrate))
    }
    return(cat3)
}
