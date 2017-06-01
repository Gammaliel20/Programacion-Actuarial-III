setwd("~/Github/Programacion-Actaurial-III/Caso 2")

rankhospital <- function(estado, resultado, num = "Mejor"){
    
    datos <- read.csv("outcome-of-care-measures.csv")
    estado1 <- unique(datos$State)
    if(!estado %in% estado1){
        stop("Invalid state:(")
    }
    resultado1 <- c("ataque", "falla", "neumonia")
    if(!resultado %in% resultado1){
        stop("invalid outcome :C")
    }
    
    
    tavo <- if (resultado == "ataque"){
        11
    }  else if (resultado == "falla"){
        17
    }  else if (resultado == "neumonia") {
        23
    }
    
    datos[, tavo] <- suppressWarnings(as.numeric(levels(datos[,tavo])[datos[,tavo]]))
    datos[, 2] <- as.character(datos[, 2])
    
    datosEstado <- datos[grep(estado, datos$State), ]
    
    Ordenar_Datos <- datosEstado[order(datosEstado[, tavo], datosEstado[, 2], na.last = NA),]
    if(num == "Mejor"){
        Ordenar_Datos[1,2]
    } else if(num == "peor"){
        Ordenar_Datos[nrow(Ordenar_Datos), 2]
    } else { 
        Ordenar_Datos[num, 2]
    }
}

rankhospital("TX", "fallis", 4)
rankhospital("MD", "ataque", "peor")
rankhospital("MD", "ataque", "Mejor")
rankhospital("MN", "ataque", 5000)