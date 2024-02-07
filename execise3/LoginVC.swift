//
//  LoginVC.swift
//  execise3
//
//  Created by Mehmet Dora on 7.02.2024.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var questionL: UILabel!
    @IBOutlet weak var altBaşlıkL: UILabel!
    @IBOutlet weak var anaBaşlıkL: UILabel!
    @IBOutlet weak var passWTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var LoginFirstL: UILabel!
    @IBOutlet weak var loginOutlet: UIButton!
    @IBOutlet weak var signInOutlet: UIButton!
    @IBOutlet weak var açıklamaL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setGradientBackground()
        hideKeyboard()
    }
    
    func hideKeyboard(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hide))
        self.view.addGestureRecognizer(tapGesture)
    }
    @objc func hide(){
        self.view.endEditing(true)
    }
    
    func setGradientBackground() {
        
        let colorTop =  UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
                
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setupView(){
        LoginFirstL.layer.borderWidth = 0
        LoginFirstL.layer.cornerRadius = 15
        LoginFirstL.layer.masksToBounds = true
        editView.layer.borderWidth = 5
        editView.layer.cornerRadius = 15
        
        emailTF.textColor = UIColor(named: "blackWhiteTextColor")
        passWTF.textColor = UIColor(named: "blackWhiteTextColor")
        emailTF.font = UIFont(name: "SpicyRice-Regular", size: 18.0)
        passWTF.font = UIFont(name: "SpicyRice-Regular", size: 18.0)
        emailTF.clearsOnBeginEditing = true
        passWTF.clearsOnBeginEditing = true
        loginOutlet.layer.cornerRadius = 10
        signInOutlet.layer.cornerRadius = 10
        passWTF.placeholder = "Password"

        if Locale.current.language.languageCode == "tr"{
            questionL.text = "Bir hesabın yok mu ?"
            anaBaşlıkL.text = "Hadi Başlayalım"
            altBaşlıkL.text = "Giriş"
            emailTF.placeholder = "Email adresiniz"
            passWTF.placeholder = "Şifreniz"
            loginOutlet.setTitle("Giriş yap", for: .normal)
            signInOutlet.setTitle("Kaydol", for: .normal)
            açıklamaL.text = "Kendi hesabını oluşturarak tüm indirmlerden anında haberdar olabilir , kampanya ve fırsatlardan faydalanbilirsin."
        }
    }

    @IBAction func signINButton(_ sender: Any) {
        // Sign in screen code
        
    }
    @IBAction func loginButton(_ sender: Any) {
        // Login screen code
    }
    
    @IBAction func exitButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
