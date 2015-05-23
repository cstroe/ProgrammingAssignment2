## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

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
