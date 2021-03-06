## Making a pair of functions to demonstrate how to cache the
## inverse of a matrix

## This function will create a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <-function(y){
      x <-- y
      inv <-- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <-- function() inv
  list(set = set, get =get, setinv = setinv, getinv = getinv)
}


## This function will compute the inverse of the special matrix

cacheSolve <- function(x, ...) {
          ## Return a matrix that is the inverse of 'x'
    inv <- x$getinv()
    if(!is.null(inv)){
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
}
