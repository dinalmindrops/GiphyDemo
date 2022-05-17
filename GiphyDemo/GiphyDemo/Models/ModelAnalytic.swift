//
//	ModelAnalytic.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelAnalytic{

	var onclick : ModelOnclick!
	var onload : ModelOnclick!
	var onsent : ModelOnclick!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let onclickData = dictionary["onclick"] as? [String:Any]{
			onclick = ModelOnclick(fromDictionary: onclickData)
		}
		if let onloadData = dictionary["onload"] as? [String:Any]{
			onload = ModelOnclick(fromDictionary: onloadData)
		}
		if let onsentData = dictionary["onsent"] as? [String:Any]{
			onsent = ModelOnclick(fromDictionary: onsentData)
		}
	}

}