//
//  ViewController.swift
//  execise3
//
//  Created by Mehmet Dora on 3.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resim: UIImageView!
    @IBOutlet weak var açıklamaL: UILabel!
    @IBOutlet weak var AnaBaşlıkL: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var başlaOutlet: UIButton!
    @IBOutlet weak var geçOutlet: UIButton!
    @IBOutlet weak var geriOutlet: UIButton!
    
    let langs = Locale.current.language.languageCode!
    var currentP = 0
    let imageNames = ["image1","image2","image3","image4"]
    let açıklamalarTR = ["Bütçene en uygun ürünleri sepetine ekleyebileceksin","Dilediğin her ürünü kolayca bulacaksın","Siparişlerin dakikalar içinde kapında olacak"]
    let açıklamalarEN = ["You will be able to add the products that best suit your budget to your cart","You will easily find any product you want", "Your orders will be at your door within minutes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()

        
    }
    
    func setView(){
        let appearence = UINavigationBarAppearance()
        appearence.titleTextAttributes = [.font : UIFont(name: "SpicyRice-Regular", size:28.0)]
        appearence.backgroundColor = .orange
        
        navigationItem.standardAppearance = appearence
        navigationItem.scrollEdgeAppearance = appearence
        navigationItem.compactAppearance = appearence
        
        navigationItem.title = "GREENGROCERY"
       
        başlaOutlet.isHidden = true
        pageControl.numberOfPages = 3
        pageControl.currentPage = currentP
        açıklamaL.font = UIFont(name: "SpicyRice-Regular", size:15.0)
        açıklamaL.adjustsFontSizeToFitWidth = true
        AnaBaşlıkL.font = UIFont(name: "SpicyRice-Regular", size: 22.0)
        AnaBaşlıkL.adjustsFontSizeToFitWidth = true
        resim.image = UIImage(named: imageNames[currentP])
        
        if langs == "en"{
            açıklamaL.text = açıklamalarEN[currentP]
        }else if langs == "tr"{
            açıklamaL.text = açıklamalarTR[currentP]
        }


    }

    @IBAction func geçB(_ sender: Any) {
        if (currentP<2){
            currentP+=1
            pageControl.currentPage = currentP
            resim.image = UIImage(named: imageNames[currentP])
            if langs == "en"{
                açıklamaL.text = açıklamalarEN[currentP]
            }else if langs == "tr"{
                açıklamaL.text = açıklamalarTR[currentP]
            }
        }
        if currentP == 2{
            başlaOutlet.isHidden = false
            geriOutlet.isHidden = true
            geçOutlet.isHidden = true
        }
    }
    
    @IBAction func başlaB(_ sender: Any) {
        // storyboard üzerinden bağlandığı için koda gerek yok
    }
    
    @IBAction func geriB(_ sender: Any) {
        if currentP>0{
            currentP-=1
            pageControl.currentPage = currentP
            resim.image = UIImage(named: imageNames[currentP])
            if langs == "en"{
                açıklamaL.text = açıklamalarEN[currentP]
            }else if langs == "tr"{
                açıklamaL.text = açıklamalarTR[currentP]
            }
        }
    }
    
}

