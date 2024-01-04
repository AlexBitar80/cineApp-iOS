//
//  ViewController.swift
//  cinetopia
//
//  Created by João Alexandre Bitar on 12/12/23.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Properties
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.mainLogo
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var coupleImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.coupleLogo
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "O lugar ideal para buscar, salvar e organizar seus filmes favoritos!"
        return label
    }()
    
    private lazy var welcomeButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Quero começar", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 32
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.backgroundColor = .buttonBackground
        button.tintColor = .black
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        addConstraints()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: - Helpers
    
    private func configureUI() {
        view.backgroundColor = .background
        view.addSubview(logoImageView)
        view.addSubview(coupleImageView)
        view.addSubview(welcomeLabel)
        view.addSubview(welcomeButton)
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.bottomAnchor.constraint(equalTo: coupleImageView.topAnchor, constant: -24),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
            coupleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            coupleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            coupleImageView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            welcomeLabel.topAnchor.constraint(equalTo: coupleImageView.bottomAnchor, constant: 24),
            
            welcomeButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 28),
            welcomeButton.heightAnchor.constraint(equalToConstant: 64),
            welcomeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 64),
            welcomeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64),
        ])
    }
    
    @objc private func buttonPressed() {
        let vc = MoviesViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
}

