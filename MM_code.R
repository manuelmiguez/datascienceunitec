add2 <- function(x,y){
  x+y
}


above <- function(x,n=10){#default value=10
  use <- x >n
  x[use]
}


columnmean <- function(y, removeNA=TRUE){
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(y[,i],na.rm = removeNA)
  }
  
  means
}


cube <- function(x,n){
  x^3
}


f <- function(x){
  y <- 2
  y^2 + g(x)
}


g <- function(x){
  x*y
}