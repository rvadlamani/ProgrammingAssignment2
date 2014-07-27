## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
## Put comments here that give an overall description of what your
## functions do


## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()) {
  tempMatrix<-NULL
  set<-function(mat){
    x<<-mat
    tempMatrix<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) tempMatrix<<- solve
  getmatrix<-function() tempMatrix
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## Write a short comment describing this function
cacheSolve <- function(x=matrix(), ...) {
  ## Return a matrix that is the inverse of 'x'
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
}