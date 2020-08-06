## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse
## It returns a list containing a function to:
##      1) set the value of the matrix,
##      2) get the value of the matrix,
##      3) set the value of the inverse, &
##      4) get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

## This function computes the inverse of the special "matrix" returned by the
## 'makeCacheMatrix'. If the inverse has already been calculated, then this 
## should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
  m <- x$getInverse
  if(!is.null(inv)) {
    message("getting cached data")
    return
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setInverse(inv)
  inv
        ## Return a matrix that is the inverse of 'x'
}
