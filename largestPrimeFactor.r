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

findPrimes <- function(x) {
    factors <- findFactors(x)
    primeFactors <- c()
    for (k in factors) {
        if (length(findFactors(k)) == 2) { #For each factor, see if it is prime
            primeFactors <- c(primeFactors,k)
        }
    }
    primeFactors
}

findLargest <- function(x) {
    primeFactors <- findPrimes(x)
    largest <- 0
    for (k in primeFactors) {
        if (k > largest) {
            largest <- k #if k is bigger, than replace larger with k
        }
    }
    largest
}