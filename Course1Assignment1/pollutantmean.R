pollutantmean <- function(directory, pollutant, id = 1:332, removeNA = TRUE)
{
  files_list <- list.files(directory, pattern ="*.csv", full.names = TRUE)
  dat <- data.frame()
  for(i in id){
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  pollmean <- mean(dat[ ,pollutant], na.rm = TRUE)
  return(pollmean)
}