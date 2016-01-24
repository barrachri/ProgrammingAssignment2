## Put comments here that give an overall description of what your
## functions do

## With this function you can set, get a matrix and in the same time
## you can also get the inverse of that matrix if it has been calculated

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function () m
  list(set = set, get=get, setinverse = setinverse, getinverse = getinverse)

}


## This function checks if the cache contains a NULL value or not
## and in case of a NULL value it will calculate and call setinverse
## of the makecacheMatrix function
## remember that everytime that you call set of makecacheMatrix you set m (inverse) to NULL
## so everytime you set a matrix you are sure you need to calculare a new inverse

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  matr <- 
  if(!is.null(m)){
    message("getting cached inverse")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
