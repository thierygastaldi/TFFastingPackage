//
//  MainViewController.swift
//  Pods-TFFastingPackage_Example
//
//  Created by Thiery on 27/02/19.
//

import UIKit

struct DynamicTab {
    let storyboard: String
    let title: String
    let image: String
    let tag: Int
    let badge: String?
}

class FPMainViewController: UITabBarController {
    
    var controllers : [UINavigationController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        instantiateDynamicTabs()
    }
    
    func instantiateDynamicTabs() {
        
        var dyntabs = [DynamicTab]()
        
        let challengesTab = DynamicTab(storyboard: "Challenges",
                                      title: "Challenges",
                                      image: "ic_tabbar_challenges",
                                      tag: 0,
                                      badge: nil)
        
        let fastingTab = DynamicTab(storyboard: "Fasting",
                                    title: "Fasting",
                                    image: "ic_tabbar_fasting",
                                    tag: 1,
                                    badge: nil)
        
        let chatTab = DynamicTab(storyboard: "Chat",
                                 title: "Chat",
                                 image: "ic_tabbar_chat",
                                 tag: 2,
                                 badge: nil)
        
        dyntabs.append(challengesTab)
        dyntabs.append(fastingTab)
        dyntabs.append(chatTab)
        
        for dyntab in dyntabs {
            let storyboard = UIStoryboard(name: dyntab.storyboard, bundle: nil)
            
            let controller = storyboard.instantiateInitialViewController() as! UINavigationController
            let tabBarItem = UITabBarItem(title: dyntab.title, image: UIImage(named: dyntab.image), tag: dyntab.tag)
            tabBarItem.tag = dyntab.tag
            tabBarItem.badgeValue = dyntab.badge
            controller.tabBarItem = tabBarItem
            controllers.insert(controller, at: dyntab.tag)
        }
        
        self.viewControllers = controllers
    }


}
