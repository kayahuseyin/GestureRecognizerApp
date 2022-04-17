//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Hüseyin Kaya on 18.04.2022.
//

import UIKit

class ViewController: UIViewController {
    var isScott = true // fonksiyon içinde oluşturulursa her tuşa basıldığında true olacaktır.
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic)) //event handler
        //bir veya daha fazla tıklamayı algılar
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        
        if myLabel.text == "Michael Scott"{
            imageView.image = UIImage(named: "halpert")
            myLabel.text = "Jim Halpert"
        } else {
                imageView.image = UIImage(named: "scott")
            myLabel.text = "Michael Scott"
            }
        /* Öbür yöntem
         if isJames == true{
         imageView.image = UIImage(named: "halpert")
         myLabel.text = "Jim Halpert"
         isScott = false
         }else{
         imageView.image = UIImage(named: "scott")
         myLabel.text = "Michael Scott"
         isJames = true}
         */
        
    }
    

}

