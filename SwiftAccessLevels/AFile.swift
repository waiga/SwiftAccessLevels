//
//  AFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    var callVariable: String = ""
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        self.callVariable = aLocalVariable
            
        //Step 1. Try to print aLocalVariable Here - Possible
//        print("\(aLocalVariable) printed from methodA in AClass")
        
        //Step 3. Try to print aPrivateProperty Here - Possible
//        print(aPrivateProperty)
        
        //Step 6. Try to print aFilePrivateProperty Here - Possible
//        print(aFilePrivateProperty)
        
        //Step 9. Try to print anInternalProperty Here - Possible
//        print(anInternalProperty)
    }
    
    func methodB () {
        
        //Step 2. Try to print aLocalVariable Here - not possible
//        print("methodB \(callVariable)")
        //if this will posssible
        print("Another Brilliant Way to bring variablefrom func methodA local variable in func methodB : \(callVariable) ")
        
        //Step 4. Try to print aPrivateProperty Here - possible (main) 검토
//        print(aPrivateProperty)
    }
}



class AnotherClassInTheSameFile {
    
    init() {
        //Step 5. Try to print aPrivateProperty Here - not possible
//        print(aPrivateProperty)
        
        //Step 7. Try to print aFilePrivateProperty Here - not Possible... 인데?? 왜 possiblefh 이제 이해되었음. 검토 
        let k = AClass()
        print("This is AnotherClassInTheSameFile")
        print(k.aFilePrivateProperty)
//        print("아니 aFilePrivateProperty는 안된다니까요...")
        
    }
}
