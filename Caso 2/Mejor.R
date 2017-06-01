setwd("~/Github/Programacion-Actuarial-III/Caso 2")

    Mejor <- function(estado, resultado){
        
        datos <- read.csv("outcome-of-care-measures.csv")
        estado1 <- unique(datos$State)
        if(!estado %in% estado1){
            stop("Invalid state:(")
        }
        resultado1 <- c("ataque", "falla", "neumonia")
        if(!resultado %in% resultado1){
            stop("invalid outcome :C")
        }
        
        Gus <- subset(datos, State == estado)
        
        mejorhospital <- if (resultado == "ataque"){
            11
        }  else if (resultado == "falla"){
            17
        }  else if (resultado == "neumonia") {
            23
        }
        
        E <- Gus[which.min(Gus[,mejorhospital]), ]
        E1 <- E[order(E$Hospital.Name), ]
        hospital <- E1[1,2]
        hospital
    }
    
    
