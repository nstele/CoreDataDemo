//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Natalia  Stele on 23/06/2021.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        createNewUser(context: context, username: "nati.stele", password: "pass", age: "34")
        createNewUser(context: context, username: "john.doe", password: "123", age: "23")
        fetchUsers(context: context)
    }


    func createNewUser(context: NSManagedObjectContext,username: String, password: String, age: String) {
        if let entity = NSEntityDescription.entity(forEntityName: "Users", in: context) {
            let user = NSManagedObject(entity: entity, insertInto: context)
            user.setValue(age, forKey: "password")
            user.setValue(username, forKey: "username")
            user.setValue(password, forKey: "age")
            do {
                try context.save()
            }
            catch {
                print("Failed to save the object")
            }
        }
    }

    func fetchUsers(context: NSManagedObjectContext) {
        //Create the request
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do {
            //Fetch the data
            let result = try context.fetch(request)
            guard let results = result as? [NSManagedObject] else {
                return
            }
            for data in results {
                //data.objectID is unique autogen by CoreData
                print("instance id:\(data.objectID)" )
                print(data.value(forKey: "username") as? String ?? "" )
            }
        } catch {
            print("Failed to retrieve the object")
        }
    }
}

