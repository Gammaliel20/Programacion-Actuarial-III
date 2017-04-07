setwd("~/GitHub/Programacion-Actuarial-III")
completos <- function(directorio, id = 1:332){
     dul <- numeric()
    for (i in id){
        Fer <- read.csv(paste(directorio, "/", formatC(i, width = 3, flag = "0"), ".CSV", sep = ""))
        dul <-c(dul, sum(complete.cases(Fer)))
        
    }
    return(data.frame(id, dul))
}

