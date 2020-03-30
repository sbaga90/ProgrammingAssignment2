##computes the inverse of the matrix; if the inverse has been
##calculated, the function will retrieve the inverse value from 
##the cache. If no, then the function will recompute the inverse

cacheSolve <- function(x, ...) {
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
