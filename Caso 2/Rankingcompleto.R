setwd("~/Github/Programacion-Actuarial-III/Caso 2")

rankingcompleto <- function(resultado, num = "Mejor"){
    
    datos <- read.csv("outcome-of-care-measures.csv")
   

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
    
    resultadofinal <- vector()
    estado1 <- levels(datos[, 7])
    
    for(i in 1:length(estado1)) {
        datosEstado <- datos[grep(estado1[i], datos$State), ]
        Ordenar_Datos <- datosEstado[order(datosEstado[, tavo], datosEstado[, 2], na.last = NA), ]
        
        hospital <- if(num == "Mejor"){
            Ordenar_Datos[1,2]
        } else if(num == "peor"){
            Ordenar_Datos[nrow(Ordenar_Datos), 2]
        } else { 
            Ordenar_Datos[num, 2]
        }
        
        resultadofinal <- append(resultadofinal, c(hospital, estado1[i]))
    
    }
    
    resultadofinal <- as.data.frame(matrix(resultadofinal,length(estado1), 2, byrow = TRUE))
    colnames(resultadofinal) <- c("hospital", "estado")
    rownames(resultadofinal) <- estado1
    
    resultadofinal
}

head(rankingcompleto("ataque",20),10)