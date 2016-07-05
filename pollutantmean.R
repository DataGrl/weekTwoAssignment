pollutantmean <- function(directory,pollutant,id = 1:332) {
    ## 'Directory' is a character vector of length 1 indicating
    ## the location of the CSV files
  
    holddirectory <- getwd() ## To set the wd back when all done
    setwd(file.path(getwd(),directory))
    
    ##pollutantdata <- read.csv("001.csv",header = TRUE,sep = ",")
    
    ##head(pollutantdata)
    
    file_list <- list.files(full.names = TRUE)
    
    data <- data.frame()
    for (i in id) {
        data <- rbind(data,read.csv(file_list[i]))
    }
    
    
    ## head(data)
    
    ## Read in the files from the directory entered by the end user
    ##filelist <- list.files(directory,full.names = TRUE)
    
    ## 'pollutant' is a character vector of length 1 indicating 
    ## the name of the pollutant for which we will calculate the 
    ## mean; either "sulfate" or "nitrate". 
    
    setwd(holddirectory) ## Set the directory back so you can run it over and over
    mean(data[,pollutant],na.rm = TRUE)
    ## 'id' is an integer vector indicating the monitor ID numbers 
    ## to be used 
    ## Return the mean of the pollutant across all monitors list 
    ## in the 'id' vector (ignoring NA values) 
    ## NOTE: Do not round the result!
    
    ## setwd(holddirectory) ## Put the wd back
}