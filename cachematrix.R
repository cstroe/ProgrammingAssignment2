## This file contains two functions:
## * makeCacheMatrix: wraps a matrix datatype with a cache that stores its 
##                    inverse
## * cacheSolve: solve for the inverse of a matrix and save the solution
##               to the cache
##
## Example:
##
## > real_matrix <- matrix(1:4, nrow = 2, ncol = 2)
##
## > cache_matrix <- makeCacheMatrix(real_matrix)
##
## > cacheSolve(cache_matrix)
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5
##
## > cacheSolve(cache_matrix)
## Retrieving cached value for matrix inverse.
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5



## Wrap a matrix with a function that caches its inverse.
## Methods: set, get, setinverse, getinverse
##
## * set: set the matrix, clears cached solution
## * get: get the matrix
## * setinverse: add the solution to the cache
## * getinverse: get the solution from the cache
##
makeCacheMatrix <- function(cache_matrix = matrix()) {
  matrix_inverse <- NULL

  setMatrix <- function(new_matrix) {
    cache_matrix <<- new_matrix
    matrix_inverse <<- NULL
  }

  getMatrix <- function() cache_matrix

  setInverse <- function(solution) matrix_inverse <<- solution

  getInverse <- function() matrix_inverse

  list(set = setMatrix, get = getMatrix,
       setinverse = setInverse, getinverse = getInverse)
}


## Solve for the inverse of a matrix wrapped in a cache, and return the value.
## If the inverse has previously been solved, just return the cached value.
##
cacheSolve <- function(cache_matrix, ...) {
  cached_inverse <- cache_matrix$getinverse()
  
  if(!is.null(cached_inverse)) {
    message("Retrieving cached value for matrix inverse.")
    return(cached_inverse)
  }
  
  real_matrix <- cache_matrix$get()
  solved_inverse <- solve(real_matrix)
  cache_matrix$setinverse(solved_inverse)
  
  solved_inverse
}
