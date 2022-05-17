//
//	Model480wStill.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class Model480wStill{

	var height : String!
	var size : String!
	var url : String!
	var width : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		height = dictionary["height"] as? String
		size = dictionary["size"] as? String
		url = dictionary["url"] as? String
		width = dictionary["width"] as? String
	}

}