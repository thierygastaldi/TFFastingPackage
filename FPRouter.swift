//
//  Router.swift
//  Pods-TFFastingPackage_Example
//
//  Created by Thiery on 27/02/19.
//

import Foundation

class FPRouter {
    static func createFastingPackageModule() -> UIViewController {
        let mainViewController = mainStoryboard.instantiateViewController(withIdentifier: "FPMainViewController")
        return mainViewController
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
