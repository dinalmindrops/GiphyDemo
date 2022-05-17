//
//  ServiceProvider.swift
//  GiphyDemo
//
//  Created by Dinal's iMac on 16/05/22.
//

import Alamofire

func GetGifAPICall(url: String, param: [String : Any], completion: @escaping (Bool, [ModelPost], ModelPagination?, ModelMeta?, AFError?) -> ()) {
   
    print("==================\(url)==================")
    print(param)
   
    AF.request(url, method: .get,  parameters: param, encoding: URLEncoding.default).responseJSON { (response) in
        CommonClass().hide_hud()
        switch (response.result) {
        case .success(let value):
            let dict = value as? [String:Any] ?? [:]
            if let dataDict = dict["data"] as? [[String:Any]] {
                completion(true, dataDict.compactMap(ModelPost.init), ModelPagination.init(fromDictionary: (dict["pagination"] as? [String:Any] ?? [:])), ModelMeta.init(fromDictionary: (dict["meta"] as? [String:Any] ?? [:])), nil)
            }
        case .failure(let error):
            print("Response of \(url):\n \(error.localizedDescription)")
            print(error.localizedDescription)
            print(error)
            completion(false, [], nil, nil, error)
        }
    }
}

