## Put comments here that give an overall description of what your
## functions do
## Those two functions will cache the inverse of matrix. And if it doesn't
## have one, it will calculate the inverse and then cache it.

## Write a short comment describing this function
## Return a list containing four functions, which would set or 
## get the original matrix and cache or retrive the inverse

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}

	get <- function() x

	setInverse <- function(m){
		inv <<- m
	} 

	getInverse <- function() inv

	list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## Calculate the inverse of matrix if it doesn't have one. If the inverse
## already existed, then directly return the inverse without calculating

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m <- x$getInverse()
	if(!is.null(m)){
		message("getting cached data")
	}
	else{
		original <- x$get()
		m <- solve(original)
		x$setInverse(m)
	}
	m	
}
