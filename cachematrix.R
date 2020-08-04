@@ -1,15 +1,44 @@
## Put comments here that give an overall description of what your
## functions do
## I set the input x as a matrix
## set the solved value "s" as a null
## I changed every reference to "mean" to "solve"
## I have written "makeCacheMatrix" and "cacheSolve" functions 
## that cache the inverse of a matrix

## Write a short comment describing this function
makeCacheMatrix <- function(x = matrix(sample(1:120,9),3,3)) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) s <<- solve
  getsolve <- function() s
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

makeCacheMatrix <- function(x = matrix()) {

}
## cacheSolve computes the inverse of the special "matrix"
## returned by makeCacheMatrix. 
## If the inverse has already been calculated


## Write a short comment describing this function
## I have changed "mean" to "solve" and "m" to "s"

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolve()
  if(!is.null(s)) {
    message("getting inversed matrix")
    return(s)
  }
  data <- x$get()
  s <- solve(data, ...)
  x$setsolve(s)
  s
}

# Checking the functions
m <- matrix(rnorm(15),3,3)
m1 <- makeCacheMatrix(m)
cacheSolve(m1)
