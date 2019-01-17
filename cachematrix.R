## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function makeCacheMatrix creates a special matrix that contains a function to set the value of the matrix, get the value of the matrix, set the value of the inverse and then get the value of the inverse.
makeCacheMatrix <- function(x = matrix()) {
inv<-NULL
setmatrix<-function(d){
e<<-d
inv<<-NULL
}
getmatrix<-function() x
setinverse<-function(inverse) inv<<-inverse
getinverse<-function() inv
list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function
## The function cacheSolve calculates the inverse of the matrix returned by the makeCacheMatrix function above. The function first determines whether the inverse has already been computed. If it has been then the function simply gets the inverse from the matrix from the cache and does not go on with the inverse calculation.
## If however the inverse has not been previously determined, the function computes the inverse of the matrix and sets the value of the matrix by using the solve function.

cacheSolve <- function(x, ...) {inv<-x$getinverse()
if(!is.null(inv)) {   ##for cases where the inverse matrix is not null
message("getting cached inverse_matrix")
return(inv)
}
inverse_matrix<-x$get() ## get the matrix data
inv<-solve(inverse_matrix,...)  ## solve for the inverse of the matrix
x$setinverse(inv)   ## set the inverse of the matrix
inv          ## return the inverse of the matrix
}
