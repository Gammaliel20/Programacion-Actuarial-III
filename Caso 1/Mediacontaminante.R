setwd("~/GitHub/Programacion-Actuarial-III/Specdata")

mediacontaminante <- function(directorio, contaminante, id = 1:332) {
    
    yo <- numeric()
    for (i in id) {
        tu <- read.csv(paste(directorio, "/",formatC(i, width = 3, flag = "0"),".csv",sep = ""))
        yo <- c(yo, tu[[contaminante]])
        
    }
    return(mean(yo, na.rm = TRUE))
}

