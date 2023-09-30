mulFinder <- function(x) { 
    sum <- 0
    for (n in x) {
        if (n %% 5 == 0) {
            sum <- sum + n
        }
        if (n %% 3 == 0) {
            sum <- sum + n
        }
    }
    sum
}

mulFinder(10)

oddCount <- function(x) {
    k <- 0
    for (n in x) {
        if (n %% 2 == 1) k <- k + 1
    }
    return(k)
}

oddCount(c(1,2,3,7,9))