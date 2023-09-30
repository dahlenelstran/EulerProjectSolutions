evenFib <- function(x) {
    sum <- 0
    prevFibNum <- 1
    fibNum <- 1
    while (fibNum < x) { 
        if (fibNum %% 2 == 0) {
            sum <- sum + fibNum
        }
        k <- prevFibNum #Store prevFibNum
        prevFibNum <- fibNum #Move current Fibonacci Number back
        fibNum <- fibNum + k #Find next Fibonacci Number
    }
    sum
}