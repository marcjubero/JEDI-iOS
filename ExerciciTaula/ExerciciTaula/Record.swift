//
//  Record.swift
//  ExerciciTaula
//
//  Created by Marc Juberó on 28/01/16.
//  Copyright © 2016 HELM S.C.P. All rights reserved.
//

import Foundation

class Record {
    var title:String = ""
    var imageName:String = ""
    var description:String = ""
    
    init(title:String, description:String, imageName:String) {
        self.title = title
        self.imageName = imageName
        self.description = description
    }
    
}
