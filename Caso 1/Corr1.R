setwd("~/GitHub/Programacion-Actuarial-III/")

corr1 <- function(directorio,horizonte = 0){
    setwd("~/GitHub/Programacion-Actuarial-III/")
    
    source("Completos.R")
    gustavo1 <- completos(directorio)
    gustavo2 <- gustavo1[gustavo1["dul"]> horizonte, ] $id
    
    gustavo3 <- numeric()
    
    for(i in gustavo2){
        D <- read.csv(paste(directorio, "/", formatC(i, width = 3, flag = "0",".csv"), sep = ""))
        gustavo4 <- D[complete.cases(D),]
        gustavo3 <- c(gustavo3, cor(gustavo4$sulfate, gustavo4$nitrate))
    }
    return(gustavo3)   
    
}