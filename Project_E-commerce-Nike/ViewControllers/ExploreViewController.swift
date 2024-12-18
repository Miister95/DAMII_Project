//
//  ExploreViewController.swift
//  Project_E-commerce-Nike
//
//  Created by Miister on 17/12/24.
//

import UIKit

class ExploreViewController: UIViewController {

    let searchBar = UISearchBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.systemGray6 // Fondo de pantalla

        if let searchBar = view.subviews.first(where: { $0 is UISearchBar }) as? UISearchBar {
                searchBar.layer.cornerRadius = 12
                searchBar.layer.masksToBounds = false
                searchBar.layer.shadowColor = UIColor.black.cgColor
                searchBar.layer.shadowOpacity = 0.3
                searchBar.layer.shadowOffset = CGSize(width: 0, height: 2)
                searchBar.layer.shadowRadius = 4
                searchBar.backgroundImage = UIImage() // Elimina el fondo por defecto
            }
                // Configurar la barra de búsqueda
                searchBar.placeholder = "Looking for shoes"
                searchBar.searchBarStyle = .minimal // Sin bordes extra
                searchBar.backgroundImage = UIImage() // Elimina el fondo por defecto
                searchBar.layer.cornerRadius = 12
                searchBar.layer.masksToBounds = true
                searchBar.translatesAutoresizingMaskIntoConstraints = false
                
                // Añadir la barra de búsqueda a la vista
                view.addSubview(searchBar)

                // Configurar restricciones
                NSLayoutConstraint.activate([
                    searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                    searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                    searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                    searchBar.heightAnchor.constraint(equalToConstant: 50)
                ])
                
                // Añadir sombra
                searchBar.layer.shadowColor = UIColor.gray.cgColor
                searchBar.layer.shadowOpacity = 0.3
                searchBar.layer.shadowOffset = CGSize(width: 0, height: 2)
                searchBar.layer.shadowRadius = 4
    }
    
    
    @IBAction func btnProfile(_ sender: Any) {
        performSegue(withIdentifier: "segueprofile", sender: self)
    }
    
    @IBAction func btnEdit(_ sender: Any) {
        performSegue(withIdentifier: "segueeditprofile", sender: self)
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        performSegue(withIdentifier: "segueshop", sender: self)
    }
    
}
