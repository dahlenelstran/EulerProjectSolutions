findingPythTriple <- function(x) {
    for (a in c(1:x)) { #For every possible A
        for (b in c(1:x)) { #For every possible B
            c <- sqrt(a*a + b*b) #Define C
            if (c %% 1 == 0) { #If C is an integer
                if (a+b+c == x) {
                    return(a*b*c)
                }
            }
        }
    }
}