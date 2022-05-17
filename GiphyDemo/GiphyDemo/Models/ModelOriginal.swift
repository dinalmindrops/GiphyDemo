//
//	ModelOriginal.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelOriginal{

	var frames : String!
	var hash : String!
	var height : String!
	var mp4 : String!
	var mp4Size : String!
	var size : String!
	var url : String!
	var webp : String!
	var webpSize : String!
	var width : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		frames = dictionary["frames"] as? String
		hash = dictionary["hash"] as? String
		height = dictionary["height"] as? String
		mp4 = dictionary["mp4"] as? String
		mp4Size = dictionary["mp4_size"] as? String
		size = dictionary["size"] as? String
		url = dictionary["url"] as? String
		webp = dictionary["webp"] as? String
		webpSize = dictionary["webp_size"] as? String
		width = dictionary["width"] as? String
	}

}