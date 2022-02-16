//
//  AnotherFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AnotherClassInAnotherFile {
    
    init() {
        
        //Step 8. Try to print aFilePrivateProperty Here - Not Possible
//        let k = AClass()
//        print("This is AnotherClass In Another File. ")
//        print(k.anInternalProperty)
        //anInternalProperty만 가능함...
        
//        print(aFilePrivateProperty)
        //Step 10. Try to print anInternalProperty Here - Possible 아하. 이해 되었음... 검토
//        let a = AClass()
//        let b = a.anInternalProperty
//        print(b)
//        print("Hello, AnotherClassInAnotherFile")
        
    }
    
}
