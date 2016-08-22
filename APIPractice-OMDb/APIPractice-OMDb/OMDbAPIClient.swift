//
//  OMDbAPIClient.swift
//  APIPractice-OMDb
//
//  Created by David Park on 8/21/16.
//  Copyright © 2016 DavidVYPark. All rights reserved.
//

import UIKit

class OMDbAPIClient {
	
	let moviesDict = [String: String]()
	
	class func getMoviesWithCompletion(completion: (NSDictionary) ->()) {
		let url = NSURL(string: "http://www.omdbapi.com/?t=hello&y=&plot=short&r=json")
		let session = NSURLSession.sharedSession()
		
		guard let unwrappedURL = url else { fatalError("Invalid URL") }
		let task = session.dataTaskWithURL(unwrappedURL) { (data, response, error) in
			guard let data = data else { fatalError("Error \(error?.localizedDescription)") }
			
			if let responseArray = try? NSJSONSerialization.JSONObjectWithData(data, options: []) as? NSDictionary {
				if let responseArray = responseArray {
					print (responseArray)
					completion(responseArray)
				}
			}
		}
		task.resume()
	}
	
	




}
