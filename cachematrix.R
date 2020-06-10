## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ##This function creates a 'special'matrix to then obtain or cache its inverse
  ## The <<- operator can be used to assign a value to an object in an environment that is different from the current environment
  Inv<- NULL
  set <- function(y){
    x <<- y
    Inv <<- NULL
  }
  get <- function() x
  setInverse <- function(Solve) Inv <<- Solve
  getInverse <- function() Inv
  newMat<<-list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  newMat
  } 

cacheSolve<- function(z=newMat, ...) {
  ## Returns a matrix that is the inverse of 'x' from makeCacheMatrix
  Inv <- z$getInverse()
  if(!is.null(Inv)){
    message("getting cached data")
    return(Inv)
  }
  data <- z$get()
  Inv <- solve(data)
  z$setInverse(Inv)
  Inv      
}

    
