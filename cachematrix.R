
##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
##cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


## makeCacheMatrix concists of list of functions basically
## get - get the matrix
## set - set the value of  a new matrix
## SetInverse - set the cache value to the calculate inv erse
## getInverse - return a cached inverse value

makeCacheMatrix <- function(x = matrix()) {
  
  #initial value of the cached inverser matrix is set to NULL
   cache <- NULL
   
   
   # this function returns the value of the original matrix
   get <- function() { x } 
   
   set <- function(y) {    # takes an input matrix
     x <<- y         # saves the input matrix in X
     cache <<- NULL      # resets the mean to NULL, basically what happens when a new object is generated.
   }
   
   # SetInverse this is called by cachesolve() 
   #  access and it will store the value using superassignment
   setInverse <- function(inverse)  { i <<- inverse }
   
   # this will return the cached value to cachesolve()
   getInverse <- function() { cache }
  
}


## Casche solve either rerturns a cached inverse of a matrix or solves the inverse caches it and returns the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  inverse <- y$getInverse()
  
  #if there is an orignal cachw value
  if(!is.null(inverse)) { 
        message("getting cached data") 
        return(inverse)} 
  
  #else get the original matrix
  original <- y$get()
  #solve for inverse
  inverse <- solve(original)
  
  #cache the inverse for future purposes
  y$SetInverse(inverse)
  
  # return the inverse 
         inverse 
  

} 
  
  
  
  
  
  
  

