complete <- function(directory="specdata", id=1:332){
    # define DF for data collection
    mydf <- data.frame()
    
    #check if last character is "/"
    lastchar <- substr(directory, nchar(directory), nchar(directory))
    if(lastchar=="/"){
        directory <- substr(directory, 1, nchar(directory)-1)
    }
    
    for(thisID in seq_along(id)){
        # define file path
        thisfile <- sprintf("%s/%03d.csv", directory, id[thisID])
        
        # read file and load dataframe
        mydf[thisID,1] <- id[thisID]
        mydf[thisID,2] <- c(length(count.fields(thisfile,skip=1)))
        
    }#end for
    
    #add column names and return df
    names(mydf) <- c("ID","NObs")
    mydf
}