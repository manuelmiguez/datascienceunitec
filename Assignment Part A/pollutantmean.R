pollutantmean <- function(directory="specdata", pollutant="sulfate", id=1:332){
    mylist <- vector()
    
    #check if last character is "/"
    lastchar <- substr(directory, nchar(directory), nchar(directory))
    if(lastchar=="/"){
        directory <- substr(directory, 1, nchar(directory)-1)
    }

    # run for each ID
    for(thisID in seq_along(id)){
        # define file path 
        thisfile <- sprintf("%s/%03d.csv", directory, id[thisID])
        
        #Create vector with all data for the pollutant in this file
        mylist <- c(mylist,read.csv(thisfile)[,pollutant])
    }#end for
    
    #return mean
    mean(mylist,na.rm = TRUE)
}
