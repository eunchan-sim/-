mytranspose <- function(x) {
  x = as.matrix(x)
  y <- matrix(1, nrow=ncol(x), ncol = nrow(x))
  for(i in 1:nrow(x)) {
    for(j in 1:ncol(x)) {
      y[j,i] <- x[i,j]
    }
  }
  if (is.matrix(x)){
    return(y)
  }
  else if (is.vector(x)){
    return(as.matrix(y))
  }
  else if (is.data.frame(x)){
    return(as.matrix(y))
  }
}
