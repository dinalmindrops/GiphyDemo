//
//	ModelPost.swift
//
//	Create by Dinal Jivani on 16/5/2022
//	Copyright © 2022. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelPost{

	var analytics : ModelAnalytic!
	var analyticsResponsePayload : String!
	var bitlyGifUrl : String!
	var bitlyUrl : String!
	var contentUrl : String!
	var embedUrl : String!
	var id : String!
	var images : ModelImage!
	var importDatetime : String!
	var isSticker : Int!
	var rating : String!
	var slug : String!
	var source : String!
	var sourcePostUrl : String!
	var sourceTld : String!
	var title : String!
	var trendingDatetime : String!
	var type : String!
	var url : String!
	var user : ModelUser!
	var username : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: [String:Any]){
		if let analyticsData = dictionary["analytics"] as? [String:Any]{
			analytics = ModelAnalytic(fromDictionary: analyticsData)
		}
		analyticsResponsePayload = dictionary["analytics_response_payload"] as? String
		bitlyGifUrl = dictionary["bitly_gif_url"] as? String
		bitlyUrl = dictionary["bitly_url"] as? String
		contentUrl = dictionary["content_url"] as? String
		embedUrl = dictionary["embed_url"] as? String
		id = dictionary["id"] as? String
		if let imagesData = dictionary["images"] as? [String:Any]{
			images = ModelImage(fromDictionary: imagesData)
		}
		importDatetime = dictionary["import_datetime"] as? String
		isSticker = dictionary["is_sticker"] as? Int
		rating = dictionary["rating"] as? String
		slug = dictionary["slug"] as? String
		source = dictionary["source"] as? String
		sourcePostUrl = dictionary["source_post_url"] as? String
		sourceTld = dictionary["source_tld"] as? String
		title = dictionary["title"] as? String
		trendingDatetime = dictionary["trending_datetime"] as? String
		type = dictionary["type"] as? String
		url = dictionary["url"] as? String
		if let userData = dictionary["user"] as? [String:Any]{
			user = ModelUser(fromDictionary: userData)
		}
		username = dictionary["username"] as? String
	}

}