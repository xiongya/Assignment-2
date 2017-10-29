## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## The following function will help you 
# 1. set the vaule of the matrix
# 2. get the value of the matrix
# 3. set the value of the inverse
# 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  set_inv <- function(inverse) inv <<- inverse
  get_inv <- function() inv
  list(set = set, get = get,
       set_inv = set_inv,
       get_inv = get_inv)

}


## Write a short comment describing this function

# The following function calculates the inverse of the matrix created with the above function. 

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inv <- x$get_inv()
  
  # check, which is same as the example
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  
  data <- x$get()
  inv <- solve(data, ...)
  x$set_inv(inv)
  inv
  
}