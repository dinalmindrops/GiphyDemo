//
//  ViewController.swift
//  GiphyDemo
//
//  Created by Dinal's iMac on 13/05/22.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var txtSearchBar: UISearchBar!
    @IBOutlet weak var clvGifs: UICollectionView!
    
    let refreshControl = UIRefreshControl.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    
    var pagination : ModelPagination?
    var meta : ModelMeta?
    var arrGifs: [ModelPost] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
}

extension ViewController{
    //MARK: UDFs
    func loadData(){
        clvGifs.delegate = self
        clvGifs.dataSource = self
        
        txtSearchBar.delegate = self
        SDWebImageDownloader.shared.config.downloadTimeout = 300
        
        refreshControl.triggerVerticalOffset = 50.0
        
        DispatchQueue.main.async {
            self.getTrendingGifs()
        }
    }
    
    func clearData(){
        arrGifs.removeAll()
        clvGifs.reloadData()
    }
    
    //MARK: API Functions
    func getTrendingGifs(){
        clvGifs.bottomRefreshControl = nil
        
        if(!HasInternet()){
            self.showAlert(message: "No Internet")
            return
        }
        if(arrGifs.isEmpty){
            CommonClass().show_hud()
        }
        
        let param = [
            "api_key":GiphyKey,
            "limit":"50",
        ] as [String : Any]
        
        GetGifAPICall(url: API_Constant.GET_TRENDING_GIF, param: param) { status, arrData, pagination, meta, error in
            if(status){
                self.arrGifs = arrData
                self.pagination = pagination
                self.meta = meta
                self.clvGifs.reloadData()
            }else{
                if let error = error {
                    print("Response of \(API_Constant.GET_TRENDING_GIF):\n \(error.localizedDescription)")
                    print(error.localizedDescription)
                    self.showAlert(message: error.localizedDescription)
                }
            }
        }
    }
    
    func searchGifs(forText: String, page: Int){
        if(forText == ""){
            clearData()
            getTrendingGifs()
            return
        }
        if(page != 0 && page >= 5000){
            refreshControl.endRefreshing()
            return
        }
        if(!HasInternet()){
            self.showAlert(message: "No Internet")
            return
        }
        
        clvGifs.bottomRefreshControl = refreshControl
        
        let param = [
            "api_key":GiphyKey,
            "limit":"20",
            "q":forText,
            "offset": "\(page)"
        ] as [String : Any]
        
        refreshControl.beginRefreshing()
        
        GetGifAPICall(url: API_Constant.GET_SEARCH_GIF, param: param) { status, arrData, pagination, meta, error in
            self.refreshControl.endRefreshing()
            if(status){
                if(page != 0){
                    self.arrGifs.append(contentsOf: arrData)
                }else{
                    self.arrGifs = arrData
                }
                self.pagination = pagination
                self.meta = meta
                self.clvGifs.reloadData()
            }else{
                if let error = error {
                    print("Response of \(API_Constant.GET_TRENDING_GIF):\n \(error.localizedDescription)")
                    print(error.localizedDescription)
                    self.showAlert(message: error.localizedDescription)
                }
            }
        }
    }
}

extension ViewController: UISearchBarDelegate{
    
    //MARK: Search bar view methods
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        clearData()
        searchGifs(forText: searchBar.text ?? "", page: 0)
        txtSearchBar.endEditing(true)
    }
    
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let newText = (searchBar.text! as NSString).replacingCharacters(in: range, with: text)
        clearData()
        searchGifs(forText: newText, page: 0)
        return true
    }
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    //MARK: Collection view methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrGifs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clvGifs.dequeueReusableCell(withReuseIdentifier: "GifCell", for: indexPath) as! GifCell
        if let gifUrl = URL(string: "https://media3.giphy.com/media/" + arrGifs[indexPath.row].id + "/giphy-preview.gif"){
            cell.imageViewGif.sd_setImage(with: gifUrl) { image, error, type, url in
//                if(image != nil){
//                    let imgData = NSData(data: image!.jpegData(compressionQuality: 1)!)
//                    let imageSize: Int = imgData.count
//                    print("actual size of image in KB: %f ", Double(imageSize) / 1000.0)
//                }
            }
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/2, height: collectionView.frame.size.width/2)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if(txtSearchBar.text != "" && self.clvGifs.contentOffset.y >= (self.clvGifs.contentSize.height - self.clvGifs.bounds.size.height)) {
            if !refreshControl.isRefreshing {
                self.searchGifs(forText: self.txtSearchBar.text ?? "", page: self.arrGifs.count)
            }
        }
    }
    
}
