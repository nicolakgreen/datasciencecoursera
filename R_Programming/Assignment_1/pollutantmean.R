pollutantmean <- function(directory, pollutant, id = 1:332) {
  files_list <- list.files("specdata", full.names=TRUE)  
  data <- data.frame() 
  
  for (i in id) {   
  data <- rbind(data, read.csv(files_list[i]))
  }
  
  mean <- weighted.mean(data[[pollutant]], na.rm=TRUE)
  mean
}

 