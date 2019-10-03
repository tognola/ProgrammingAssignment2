## Put comments here that give an overall description of what your
## functions do

## Function that returns a list of functions to:
  ## 1. set the matrix
  ## 2. get the matrix
  ## 3. set the inverse of the matrix
  ## 4. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## The function looks for the inverse of X in the cache, if it stored
## it doesn't calculate it again, or if it isn't, it calculates the inverse of x
## and returns it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  print(data)
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
