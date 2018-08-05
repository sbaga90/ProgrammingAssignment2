##Functions to obtain the inverse of a matrix from the cache for
##time consuming computations. The function displays lexical scoping
##which allows R to search if there is a value already cached for
##a function and uses that value instead of recomputing the value.

##This function sets the value of the matrix,
##gets the value of the matrix, sets the value of the inverse
##gets the value of the inverse in order to cache its inverse. 
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) m <<- solve
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}
