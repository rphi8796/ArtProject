//
//  ArtCollectionViewController.swift
//  ArtProject
//
//  Created by Phillips, Ryan on 11/7/18.
//  Copyright © 2018 Phillips, Ryan. All rights reserved.
//

import UIKit

private let reuseIdentifier = "artIdentifier"

public class ArtCollectionViewController: UICollectionViewController
{

    //MARK: Data members for Creativitiy Screen
    
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "Cafe"),
            UIImage(named: "George"),
            UIImage(named: "StarryNight"),
            UIImage(named: "Java"),
            UIImage(named: "Swift"),
            UIImage(named: "MFM"),
            UIImage(named: "Octocat")
        ]
    }()
    
    private let labels : [String] =
    {
        return [
            "NightHawks",
            "Saint Geroge Killing the Dragon",
            "Van Gogh",
            "JavaLogo",
            "SwiftLogo",
            "Master the Mainframe",
            "RyanOctocat"
        ]
    }()
    
    
    
    //MARK: - Lifecycle
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading view
    }
    
    
    // Mark: - Navigation / Layout

    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    
    public override func collectionView(_ collectionView: UICollectionView,  numberOfItemsInSection section: Int) -> Int
    {
        return creativeCS.count
    }
    
    
    // MARK: UICollectionViewDataSource

    public override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
    
        artCell.backgroundColor = .green
        artCell.artImage.image = creativeCS[indexPath.row]
        artCell.artLabel.text = labels[indexPath.row]
    
        return artCell
    }

    
    // MARK: UICollectionViewDelegate
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRowCompact
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
   
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumKubeSpacingForSectionAt section: Int) -> CGFloat
    {
        return sectionInsets.left
    }

}
