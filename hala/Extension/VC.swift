//
//  VC.swift
//  hala
//
//  Created by asma saleh on 24/05/2022.
//

import Foundation
import UIKit

extension UIViewController {
    
    func transitionTo(storybrd: String , ID: String) {
    
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let mainStoryboard: UIStoryboard = UIStoryboard(name: storybrd, bundle: nil)
        let homeViewController = mainStoryboard.instantiateViewController(withIdentifier: ID)
        
        appdelegate.window!.rootViewController = homeViewController
        
        
    }
}
