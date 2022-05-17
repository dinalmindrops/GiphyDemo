//
//	ModelUser.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelUser{

	var avatarUrl : String!
	var bannerImage : String!
	var bannerUrl : String!
	var descriptionField : String!
	var displayName : String!
	var instagramUrl : String!
	var isVerified : Bool!
	var profileUrl : String!
	var username : String!
	var websiteUrl : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		avatarUrl = dictionary["avatar_url"] as? String
		bannerImage = dictionary["banner_image"] as? String
		bannerUrl = dictionary["banner_url"] as? String
		descriptionField = dictionary["description"] as? String
		displayName = dictionary["display_name"] as? String
		instagramUrl = dictionary["instagram_url"] as? String
		isVerified = dictionary["is_verified"] as? Bool
		profileUrl = dictionary["profile_url"] as? String
		username = dictionary["username"] as? String
		websiteUrl = dictionary["website_url"] as? String
	}

}