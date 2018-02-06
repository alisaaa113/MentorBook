//
//  Mentor.swift
//  Mentor
//
//  Created by arisa isshiki on 2018/02/06.
//  Copyright © 2018年 alisa. All rights reserved.
//

import UIKit

class Mentor{
    var name: String!
    var course: String!
    var imageName: String!
    
    //初期化　引数で、名前、コース、写真もらって設定
    init(name: String, imageName: String, course: String){
        self.name = name
        self.imageName = imageName
        self.course = course
    }
    
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
    }
    
}
