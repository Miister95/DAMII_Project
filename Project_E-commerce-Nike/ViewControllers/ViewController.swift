//
//  ViewController.swift
//  Project_E-commerce-Nike
//
//  Created by Miister on 28/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nikeLogoImageView: UIImageView!
    
    override func viewDidAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        animateLogo()
    }
    
    private func animateLogo() {
        // Anima el logo reduciendo su escala y desvaneciéndolo
        UIView.animate(withDuration: 3.0, animations: {
            self.nikeLogoImageView.transform = CGAffineTransform(scaleX: 1.5, y: 1.5) // Escala el logo
            self.nikeLogoImageView.alpha = 0.0 // Desvanece el logo
        }) { _ in
            // Presenta el siguiente ViewController al terminar la animación
            self.presentNextScreen()
        }
    }
    
    private func presentNextScreen() {
        // Identificador del siguiente ViewController en tu Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let welcome1ViewController = storyboard.instantiateViewController(withIdentifier: "Welcome1ViewController")
        
        // Configuración de la transición
        welcome1ViewController.modalTransitionStyle = .crossDissolve
        welcome1ViewController.modalPresentationStyle = .fullScreen
        
        // Presentar el siguiente ViewController
        self.present(welcome1ViewController, animated: true, completion: nil)
    }
    
    @IBAction func btnStarted(_ sender: Any) {
        performSegue(withIdentifier: "welcome2", sender: self)
    }
    
    @IBAction func btnNext(_ sender: Any) {
        performSegue(withIdentifier: "welcome3", sender: self)
    }
    
    @IBAction func btnNextLogin(_ sender: Any) {
        performSegue(withIdentifier: "login", sender: self)
    }
}

