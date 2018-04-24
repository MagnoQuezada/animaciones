//
//  ViewController.swift
//  programatica3
//
//  Created by macbookUser on 23/04/18.
//  Copyright © 2018 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.cyan
        setupLayout()
        imageView.center.x -= view.bounds.width / 2
        
//        UIView.animate(withDuration: 1.5){
//            self.imageView.center.x = self.view.bounds.width - 50
//        }
        
//        UIView.animate(withDuration: 1.5, delay: 0.4, options: [.repeat, .autoreverse, .curveEaseIn], animations: {
//            self.imageView.center.x = self.view.bounds.width - 50
//            self.imageView.alpha = 0.1
//            self.imageView.transform.rotated(by: 1.0)
//            }, completion: nil)
        
        self.imageView.center.y -= 30.0
        self.imageView.alpha = 1.0
        
        UIView.animate(withDuration: 1.0, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
            self.imageView.center.y -= 30.0
            self.imageView.alpha = 1.0
            }, completion: nil )
    }
    
    
    let imageView : UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "enjambre")
        iv.contentMode = .scaleAspectFill
        //iv.translatesAutoresizingMaskIntoConstraints = false
        iv.layer.cornerRadius = 50
        iv.layer.masksToBounds = true
        
        return iv
    }()
    
    func setupLayout(){
        view.addSubview(imageView)
        
        imageView.frame = CGRect(x: 0, y: 100, width: 100, height: 100)
        //imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        
        
    }


}

