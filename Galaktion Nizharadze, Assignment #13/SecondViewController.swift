//
//  SecondViewController.swift
//  Galaktion Nizharadze, Assignment #13
//
//  Created by Gaga Nizharadze on 05.07.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var saveChangesButton: UIButton!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var pfImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        underLineAllTextFields()
        configureButtons()
    }
    
    @IBAction func changeProfilePicture(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.sourceType = .photoLibrary
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
    
    private func underLineAllTextFields() {
        userNameTextField.underlined()
        emailTextField.underlined()
        passwordTextField.underlined()
        locationTextField.underlined()
    }
    
    private func configureButtons() {
        saveChangesButton.backgroundColor = .blue
        saveChangesButton.layer.cornerRadius = saveChangesButton.bounds.height / 2
        
        editButton.backgroundColor = .white
        editButton.layer.cornerRadius = editButton.bounds.height / 2
    }
}

extension SecondViewController:  UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            pfImage.image = image
        }
        picker.dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
}


extension UITextField {
    func underlined() {
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}
