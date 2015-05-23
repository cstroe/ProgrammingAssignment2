## This file contains two functions:
## * makeCacheMatrix: wraps a matrix datatype with a cache that stores its 
##                    inverse
## * cacheSolve: solve for the inverse of a matrix and save the solution
##               to the cache

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
