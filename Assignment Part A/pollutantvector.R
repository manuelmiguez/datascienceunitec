pollutantvector<-function(directory="specdata", pollutant="sulfate", id=1:332, p=0.5){
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
        
        localfile <- na.omit(read.csv(thisfile)[,pollutant])
        goodrec <- localfile>p
        
        #Create vector with all data for the pollutant in this file
        mylist <- c(mylist,localfile[goodrec])
    }#end for
    
    #return
    mylist
}