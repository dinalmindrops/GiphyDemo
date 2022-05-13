//
//  ViewController.swift
//  GiphyDemo
//
//  Created by Dinal's iMac on 13/05/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate {
    
    @IBOutlet weak var txtSearchBar: UISearchBar!
    @IBOutlet weak var clvGifs: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clvGifs.delegate = self
        clvGifs.dataSource = self
        
        txtSearchBar.delegate = self
    }

    //MARK:- Search bar view methods
   
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        txtSearchBar.endEditing(true)
    }
    
    //MARK:- Collection view methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = clvGifs.dequeueReusableCell(withReuseIdentifier: "GifCell", for: indexPath) as! GifCell
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width/2, height: collectionView.frame.size.width/2)
    }
}

