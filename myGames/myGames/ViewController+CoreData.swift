//
//  ViewController+CoreData.swift
//  myGames
//
//  Created by Lucas Inocencio on 02/12/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
