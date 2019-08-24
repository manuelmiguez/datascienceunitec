calculator<-function(){
    print("******Simple R Calculator - Select operation: ******")
    print("1.Add")
    print("2.Subtract")
    print("3.Multiply")
    print("4.Divide")
    print("5.Factors")
    print("6.Prime")
    
    cat("\n")
    Operation <- readline("Enter choice [1/2/3/4/5/6]: ")
    
    cat("\n")
    # verify selection range and loads needed elements
    if(Operation>=1 && Operation<=4){
        firstnumber <- as.numeric(readline("Enter first number: "))
        secondnumber <- as.numeric(readline("Enter second number: "))
    }else if(Operation>=5 && Operation<=6){
        thenumber <- as.integer(readline("Enter the number: "))
    }else{
        print("Seletion outside range")
    }
    
    cat("\n")
    if(Operation==1){
        print(sprintf("%s + %s = %s",firstnumber,secondnumber,firstnumber+secondnumber))
    }else if(Operation==2){
        print(sprintf("%s - %s = %s",firstnumber,secondnumber,firstnumber-secondnumber))
    }else if(Operation==3){
        print(sprintf("%s * %s = %s",firstnumber,secondnumber,firstnumber*secondnumber))
    }else if(Operation==4){
        print(sprintf("%s / %s = %s",firstnumber,secondnumber,firstnumber/secondnumber))
    }else if(Operation==5){
        print(sprintf("The factors of %s are", thenumber))
        for(i in 1:thenumber){
            if((thenumber %% i) == 0){ #if modulus is zero then is a factor
                print(i)
            }#end if
        }# end for
    }else if(Operation==6){
        isPrime<-0
        # if the number is less than 1 cannot be a prime
        if(thenumber>1){
            if(thenumber==2) {
                isPrime<-1
            } else if (any(thenumber %% 2:(thenumber-1) == 0)) {
                # If any number is a factor other than the number given and 1 is not a prime number
                isPrime<-0
            }else{
                isPrime<-1
            }
        }
        
        if(isPrime==1){
            print(sprintf("%s is a prime number", thenumber))
        }else{
            print(sprintf("%s is not a prime number", thenumber))
        }
    }# end oepration if
}

