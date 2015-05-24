makeCacheMatrix <- function(x = matrix()) {
  ## Creates a list of functions 
  ##              1. set the matrix
  ##              2. get the matrix
  ##              3. set the inverse
  ##              4. get the inverse
  ##          used as the input to cacheSolve() that
  ## can cache the inverse of a matrix.
  
  n<-NULL
  set<-function(y){
    x<<-y
    
    # use `<<-` to assign a value to an object in an environment 
    # different from the current environment
    
    n<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) n<<- solve
  getmatrix<-function() n
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}
