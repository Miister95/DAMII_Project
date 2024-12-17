	//
//  Profile2Controller.swift
//  Project_E-commerce-Nike
//
//  Created by Nexu on 14/12/24.
//
import UIKit

class ProfileController: UIViewController {
    
    @IBOutlet weak var imgprofile: UIImageView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imgprofile.layer.cornerRadius = imgprofile.frame.size.width / 2
        imgprofile.clipsToBounds = true
    }
}	
