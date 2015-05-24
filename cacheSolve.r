cacheSolve <- function(x=matrix(), ...) {
  
  ## CacheSolve computes the inverse of the matrix returned
  ## by makeCacheMatrix(), unless the inverse has
  ## been calculated, in which case
  ## it retrieves it from the cache.
  
  n<-x$getmatrix()
  
  # if the inverse has already been calculated
  if(!is.null(n)){
    # retrieves inverse from cache and skips the computation. 
    message("getting cached data")
    return(n)
  }
  
  # otherwise, calculates the inverse 
  matrix<-x$get()
  n<-solve(matrix, ...)
  x$setmatrix(n)
  n
}
