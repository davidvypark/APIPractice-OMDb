//
//  ViewController.swift
//  APIPractice-OMDb
//
//  Created by David Park on 8/21/16.
//  Copyright © 2016 DavidVYPark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		hitSomeRandomTitles()
		hitTheMatrix()
		hitlordOfTheRings()

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()

	}
	
	func hitSomeRandomTitles() {
		let url = NSURL(string: "https://www.omdbapi.com/?t=hello&y=&plot=short&r=json")
		let session = NSURLSession.sharedSession()
		
		guard let unwrappedURL = url else { fatalError("Invalid URL") }
		let task = session.dataTaskWithURL(unwrappedURL) { (data, response, error) in
			guard let data = data else { fatalError("Error \(error?.localizedDescription)") }
			
			if let responseArray = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as? NSDictionary {
				if let responseArray = responseArray {
					print (responseArray)
					//completion(responseArray)
				}
			}
		}
		task.resume()
	}

	
	func hitTheMatrix() {
		let url = NSURL(string: "https://www.omdbapi.com/?t=matrix&y=&plot=short&r=json")
		let session = NSURLSession.sharedSession()
		
		guard let unwrappedURL = url else {fatalError("error") }
		
		let task = session.dataTaskWithURL(unwrappedURL) { (data, response, error) in
			guard let data = data else {fatalError("error \(error?.localizedDescription)") }
			
			if let responseData = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as? NSDictionary {
				print (responseData)
			}
		}
		task.resume()
	}
	
	func hitlordOfTheRings() {
		
		let url = NSURL(string: "https://www.omdbapi.com/?t=lord+of+the+rings&y=&plot=short&r=json")
		let session = NSURLSession.sharedSession()
		
		guard let unwrappedURL = url else {fatalError("Error") }
		let task = session.dataTaskWithURL(unwrappedURL) { (data, response, error) in
			guard let data = data else { fatalError("Error \(error?.localizedDescription)") }
			
			if let responseData = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as? NSDictionary {
				print(responseData)
			}
		}
		task.resume()
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


}

