## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Caches the inverse of the matrix

makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        set_matrix_inverse <- function(solve) m <<- solve
        matrix_inverse <- function() m
        list(set =set, get = get,
             matrix_inverse= matrix_inverse,
             set_matrix_inverse=set_matrix_inverse)
}

## Write a short comment describing this function
##either retrieves or solves for the inverese of the matrix

cacheSolve <- function(x, ...) {
        m <- x$matrix_inverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$set_matrix_inverse(m)
        m
}
