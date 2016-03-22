## These functions are use to cache the inverse of a matrix.
## 

## Im passing null into m which is an undeclared variable and then passing y into as
## as another variable and giving set the value
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}

## just as above too, a matrix is created , m gets returned and passed into cache solve
## function computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
 	matrix <- x$get() 
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}