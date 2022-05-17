//
//  ModelPagination.swift
//  GiphyDemo
//
//  Created by Dinal's iMac on 16/05/22.
//

import Foundation

class ModelPagination{

    var count : Int!
    var offset : Int!
    var totalCount : Int!

    init(fromDictionary dictionary: [String:Any]){
        count = dictionary["count"] as? Int
        offset = dictionary["offset"] as? Int
        totalCount = dictionary["total_count"] as? Int
    }

}

class ModelMeta{

    var msg : String!
    var responseId : String!
    var status : Int!

    init(fromDictionary dictionary: [String:Any]){
        msg = dictionary["msg"] as? String
        responseId = dictionary["response_id"] as? String
        status = dictionary["status"] as? Int
    }

}
