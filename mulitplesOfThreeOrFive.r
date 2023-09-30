mulFinder <- function(x) { 
    sum <- 0
    k <- 0 
    while (k < x) { #Note to self: Implement for loop later
        if (k %% 5 == 0) {
            sum <- sum + k
        } #Checks to find k mod 5
        else if (k %% 3 == 0) {
            sum <- sum + k
        } #Checks to find k mod 3
        k <- k + 1
    }
    sum #Returns sum
}

mulFinder(1000)