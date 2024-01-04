//
//  MoviesViewController.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 22/12/23.
//

import UIKit

class MoviesViewController: UIViewController {

    // MARK: - Properties
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        setupNavigation()
    }
    
    // MARK: - Helpers
    
    private func setupNavigationBar() {
        title = "Filmes Populares"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white
        ]
        navigationItem.setHidesBackButton(true, animated: true)
    }
}
