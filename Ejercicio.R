#Clase de 16/02/2017
x <- 1
print(x)
x
msg <-  "hola"
msg
X <- #esta expresion esta incompleta
msg1
a <- 1
b <- 1L

#creacion de vectores

#Con la funcion vector
Mi_vector <- vector("integer",5)

#con la funcion C
x <- c(0.5,0.6)
x2 <- c(TRUE,FALSE)
x3 <- c(T,F)
x4 <- c("a","b","c")
x5 <- 9:29
x6 <- c(2+1i,3-5i,3.14+1.186i)
y <- c(1.7,"a")
y2 <- c(TRUE,2)
y3 <- c("a", TRUE)

z <- 0:6
class(z)

as.numeric(z)

as.logical(z)

as.character(z)

q <- c(0:6,0.5)
as.logical(q)

e <- c("a","b","c")
as.numeric(e)
as.logical(e)
as.complex(e)
w <- c(9.8,8.7,7.2)
as.integer(w)

x <- list(1,"a",TRUE,1+4i)

x9 <- list(1,"a",TRUE,1+4i,0:100)

n <- matrix(nrow = 2,ncol = 3)
n
dim(n)
attributes(n)

m <- matrix(1:6,2,3)
m

c <- 1:10
dim(c)
dim(c) <- c(2,5)
c
dim(c) <- c(5,2)
c
l
table(l)
unclass(l)

l <- factor(c("yes","yes","no","yes","no"),levels = c("ye
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)

l <- factor(c("yes","yes","no","yes","no"))s","no"))

x <- data.frame(foo=1:4, bar=c(T,T,F,T))
x
nrow(x)
ncol(x)

x <- 1:3
names(x)
names(x) <- c("hebry","yessi","elsy")
x

x <- list(a=1,b=2,c=3)
x

m <- matrix(1:4,2,2)
m
dimnames(m)
dimnames(m) <- list(c("a","b"),c("C","d"))
m


y <- data.frame(a=1, b="a")
dput(y)
dput(y,"y.R")
y <- dget("y.R")


x <- "Programacion Actuarial III"
y <- data.frame(a=1:10, b="a")
dump(c("x","y"), file="data.R")
source("data.R")

