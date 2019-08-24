corr <-function(directory="specdata/", threshold=0){
    # variables for colllection
    mydata <- vector()
    
    #check if last character is "/"
    lastchar <- substr(directory, nchar(directory), nchar(directory))
    if(lastchar!="/"){
        directory <- paste(directory, "/", sep='')
    }
    
    # create list of all .csv files in folder
    file_list <- list.files(path=directory, pattern="*.csv") 
    
    # read each .csv file in file_list and process it
    for (i in 1:length(file_list)){
        thisdata <- read.csv(paste(directory, file_list[i], sep=''))[,2:3]
        
        if(nrow(thisdata)>threshold){
            mydata <- c(mydata,cor(na.omit(thisdata))[1,2])
        }# end if threshold
    }#end for

    #return
    mydata
}