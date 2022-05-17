//
//	ModelLooping.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelLooping{

	var mp4 : String!
	var mp4Size : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		mp4 = dictionary["mp4"] as? String
		mp4Size = dictionary["mp4_size"] as? String
	}

}