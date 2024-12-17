//
//  EditProfileController.swift
//  Project_E-commerce-Nike
//
//  Created by Nexu on 16/12/24.
//

import UIKit

class EditProfileController: UIViewController {
    
    @IBOutlet weak var imgEprofile: UIImageView!
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imgEprofile.layer.cornerRadius = imgEprofile.frame.size.width / 2
        imgEprofile.clipsToBounds = true
    }
}
