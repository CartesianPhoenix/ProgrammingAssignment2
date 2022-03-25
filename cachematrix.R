## Data science specialization Course 2 Assignment 2
## functions do caching a matrix and then getting the inverse of a matrix

## First function is to cache the matrix

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


## Second function is the get the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting the same inversed cached matrix")
    return(i)
  }
  m <- x$get()
  i <- solve(m, ...)
  x$setinverse(i)
  i
}
