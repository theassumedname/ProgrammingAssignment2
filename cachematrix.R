## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        solve <- NULL
        set <- function(y) {
                x <<- y
                solve <<- NULL
        }
        get <- function() x
        setSolve <- function(solve) solve <<- solve
        getSolve <- function() solve
        list(set = set, get = get,
             setSolve = setSolve,
             getSolve = getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       ## Return a matrix that is the inverse of 'x'
        solve <- x$getSolve()
        if(!is.null(solve)) {
                message("getting cached data")
                return(solve)
        }
        data <- x$get()
        solve <- solve(data)
        x$setSolve(solve)
        solve
}
