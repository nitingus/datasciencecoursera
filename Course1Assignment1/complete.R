complete <- function(directory, id = 1:332, removeNA = TRUE)
{
  fileslist <- list.files(directory, pattern = "*.csv", full.names = TRUE)
  dat <- data.frame(length(id), length(id))
  nob <- vector(mode = "list", length = length(fileslist))
  nobs <- vector("numeric", length(id))
  j <- 1
  for(i in id)
  {
    nob <- read.csv(fileslist[i])
    c <- sum(complete.cases(nob))
    nobs[j] <- c
    j = j + 1  
  }
  dat <- data.frame(id,nobs)
  return(dat)
}