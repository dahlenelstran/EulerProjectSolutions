findFactors <- function(x) {
    factors <- c(1,x)
    k <- 2
    while (k <= sqrt(x)) { #Only checks the first half of factors for efficiency's sake
        if (x %% k == 0) {
            factors <- c(factors,k,x/k) #Adds all factors to the list of factors
        }
        k <- k + 1
    }
    factors
}

triangleNumber <- function(x) {
    sum <- 0
    for (n in c(1:x)) {
        sum <- sum + n
    }
    sum
}

findXNumberOfDivisors <- function(x) {
    k <- 1
    while (length(findFactors(triangleNumber(k))) < x) {
        k <- k + 1
    }
    triangleNumber(k)
}

findXNumberOfDivisors(500)