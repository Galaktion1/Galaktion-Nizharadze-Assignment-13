//
//  ViewController.swift
//  Galaktion Nizharadze, Assignment #13
//
//  Created by Gaga Nizharadze on 04.07.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "img_background.png")!)
        confButtons()
        
        
    }
    
    private func confButtons() {
        logInButton.backgroundColor = .blue
        logInButton.layer.cornerRadius = logInButton.bounds.height / 2
        
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = signUpButton.bounds.height / 2
    }
    

    @IBAction func moveToSecondVC(_ sender: Any) {  // ეს აქ არაფერ შუაში არაა, მაგრამ მგონი შემოწმებისას უფრო მარტივი იქნება.
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.modalPresentationStyle = .fullScreen
        
        present(vc, animated: true)
    }
    
}

