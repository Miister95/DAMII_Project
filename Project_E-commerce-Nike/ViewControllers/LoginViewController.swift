//
//  LoginViewController.swift
//  Project_E-commerce-Nike
//
//  Created by Miister on 6/12/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurePasswordTextField()
    }
    
    func configurePasswordTextField() {
        // Crear el botón de "ver/ocultar"
        let toggleButton = UIButton(type: .custom)
        toggleButton.setImage(UIImage(systemName: "eye"), for: .normal) // Ícono "ojo"
        toggleButton.setImage(UIImage(systemName: "eye.slash"), for: .selected) // Ícono "ojo tachado"
        toggleButton.tintColor = .gray
        toggleButton.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        toggleButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        
        // Asignar el botón como el view derecho del TextField
        passwordTextField.rightView = toggleButton
        passwordTextField.rightViewMode = .always
        
        // Asegurarse de que el TextField esté en modo "Secure Text Entry"
        passwordTextField.isSecureTextEntry = true
    }
    
    @objc func togglePasswordVisibility(_ sender: UIButton) {
        sender.isSelected.toggle() // Alterna entre seleccionado y no seleccionado
        passwordTextField.isSecureTextEntry.toggle() // Alterna entre mostrar y ocultar texto
    }
    
    @IBAction func btnSignIn(_ sender: Any) {
        performSegue(withIdentifier: "segueexplore", sender: self)
    }
    
    
}
