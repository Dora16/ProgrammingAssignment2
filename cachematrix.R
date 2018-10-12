## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	 ## Initialization of object
        s<-NULL
	## Function to set up matrix and to clear inverse of matrix
	set<-function(y){
		x<<-y
		s<<-NULL
	}
	## Function returns matrix
	get<- function( ) x
	## Function caches the inverse of matrix
	setsol<- function(solve)    s<<-solve
	## Function returns the inverse of matrix
	getsol<-function( ) s
	## Function assigns each functions from above to a list() and returns this list 
	list(set=set, get=get,
	      setsol=setsol,getsol=getsol)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s<-x$getsol()
	 ## Check the inverse of matrix and return it in case it was alredy cached
	if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
	## Inverse of matrix by use of function solve() in case it is not done yet.
     data<-x$get()
     s <- solve(data, ...)
     x$setsol(s)
     s

}
