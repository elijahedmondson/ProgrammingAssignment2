## The makeCacheMatrix() function constructs a matrix object that can store the inverse of itself.
  
  makeCacheMatrix <- function(x = matrix()) {
 
   m <- NULL
   set <- function(y){
   x <<- y
   m <<- NULL
 }
 get <- function() x
 setmatrix <- function(solve) m <<- solve
 getmatrix <- function() m
 list(set = set, get = get,
    setmatrix = setmatrix,
    getmatrix = getmatrix)
}
  


## The cacheSolve() function calculates the inverse of the previously created matrix (constructed by makeCacheMatrix).
  
 cacheSolve <- function(x=matrix(), ...) {
     m <- x$getmatrix()
     if(!is.null(m)){
       message("retrieving data, as requested")
       return(m)
     }
     matrix <- x$get()
     m <- solve(matrix, ...)
     x$setmatrix(m)
     m
}

