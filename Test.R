insert <- function(x, xs){
  if (length(xs) == 0){return(c(x))}
  if(x < xs[1]){return(c(x, xs))}
  else{return(c(xs[1], insert(x, xs[-1])))}
}
foldr <- function(f, v, xs){
  if(length(xs) == 0){return(v)}
  return(f(xs[1], foldr(f, v, xs[-1])))
}
foldr(insert, c(), c(3, 2, 1, 4, 10, 7, 9))


g <- 1
gf <- function(x){g <- g+x; return(g)}


