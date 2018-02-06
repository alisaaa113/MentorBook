//
//  ViewController.swift
//  Mentor
//
//  Created by arisa isshiki on 2018/02/06.
//  Copyright © 2018年 alisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    //表示するメンター番号
    var index : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mentorArray.append(Mentor(name:"ながた",imageName:"nagata.jpg",course:"iPhone"))
        mentorArray.append(Mentor(name:"りょう",imageName:"ryo.jpg",course:"Unity"))
        mentorArray.append(Mentor(name:"たいてぃ",imageName:"taithi.JPG",course:"WebS,WebD"))
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setUI(){
        
        
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
        
        
    }
    
    @IBAction func mae(){
        index = index - 1
        setUI()
        
        //if index < -2{
        //    index = 0
        //}
        
    }
    
    @IBAction func tugi(){
        index = index + 1
        setUI()
        
       // if index > 2{
       //     index = 0
       // }
        
    }


}

