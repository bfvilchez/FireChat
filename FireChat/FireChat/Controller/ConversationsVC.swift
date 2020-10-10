//
//  ConversationsVC.swift
//  FireChat
//
//  Created by Brian Vilchez on 10/9/20.
//

import Foundation
import UIKit

class ConversationsVC: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureNav()
    }
    
    
    // MARK: - ConfigureUI Methods
    
    private func configureView() {
        view.backgroundColor = .white
    }
    
    private func configureNav() {
    configureLeftItemBarButton()
        
    let apearance = UINavigationBarAppearance()
        apearance.configureWithOpaqueBackground()
        apearance.configureWithDefaultBackground()
        apearance.configureWithTransparentBackground()
        apearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        apearance.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        navigationController?.navigationBar.compactAppearance = apearance
        navigationController?.navigationBar.standardAppearance = apearance
        navigationController?.navigationBar.scrollEdgeAppearance = apearance
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "My Messages"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
        
      
    }
    
    private func configureLeftItemBarButton() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 36, height: 36)
        
        // image sizing
        let size = CGSize(width: 40, height: 40)
        let image = UIImage(named: "Profile")
    
        guard let resizedImage = image?.resize(targetSize: size) else { return }
    
        button.setImage(resizedImage, for: .normal)
        button.imageView?.image = resizedImage
       
        button.imageView?.layer.cornerRadius = button.frame.width / 2
        button.imageView?.layer.masksToBounds = true
        
        let leftBarButton = UIBarButtonItem(customView: button)
        navigationItem.leftBarButtonItem = leftBarButton
        
        button.addTarget(self, action: #selector(showProfile), for: .touchUpInside)
    }
    
    // MARK: - Helper Methods
    
    @objc private func showProfile() {
        print("profile")
    }
    
    
    // MARK: IBAction Methods
    
}
