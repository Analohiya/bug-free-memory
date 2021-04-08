## Put comments here that give an overall description of what your
## functions do
	## We know that the functions "makeCacheMatrix" and "cacheSolve"
	## can cache its inverse.
## Write a short comment describing this function
	## "makeCacheMatrix" creates a speciat matrix object that caches
	## its inverse while "cacheSolve" computes the inverse of the 		
	## special matrix returned.
makeCacheMatrix <- function(x = matrix()) {
j <-NULL
set <-function(y) {
	x <<- y
	j <<- NULL
}
	get <- function()x
	setInverse <- function(inverse) j <<-inverse
	getInverse <-function() j
	list(set = set,get = get,
	setInverse = setInverse,
	getInverse = getInverse)
}


## Write a short comment describing this function
	## If the inverse of the function "cacheSolve" has already been
	## calculated and the matrix has not changed, then it retrieves 
	## the inverse from the cache.
	
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        j <- x$getInverse()
        if(!s.null(j)) {
        	message("getting cached information")
        	return(j)
        }
        data <- x$get()
        j <- solve(data,...)
        x$setInverse(j)
        j
}
