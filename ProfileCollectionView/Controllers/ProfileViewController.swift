//
//  ViewController.swift
//  ProfileCollectionView
//
//  Created by Kaue Ludovico on 13/12/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    private let cellId = "cellId"
    var profiles: [Profile]?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ProfileCollectionViewCell.self, forCellWithReuseIdentifier: cellId)
        
        populateProfiles()
    }
    
    func populateProfiles() {
        let profile1 = Profile()
        profile1.name = "Marianna"
        profile1.language = "Swift"
        profile1.image = "tinky"
        
        let profile2 = Profile()
        profile2.name = "Maria"
        profile2.language = "Swift"
        profile2.image = "po"
        
        let profile3 = Profile()
        profile3.name = "Lucas Parolin"
        profile3.language = "Swift"
        profile3.image = "lala"
        
        let profile4 = Profile()
        profile4.name = "Kayky"
        profile4.language = "Swift"
        profile4.image = "dipsy"
        
        let profile5 = Profile()
        profile5.name = "Lucas Pedrolo"
        profile5.language = "Swift"
        profile4.image = "tinky"
        
        let profile6 = Profile()
        profile6.name = "Liliana"
        profile6.language = "Swift"
        profile4.image = "po"
        
        let profile7 = Profile()
        profile7.name = "Pablo"
        profile7.language = "Swift"
        profile4.image = "dipsy"
        
        profiles = [profile1, profile2, profile3, profile4, profile5, profile6, profile7]
        
    }
}

extension ProfileViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if let count = profiles?.count {
            return count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ProfileCollectionViewCell
        
        if let items = profiles?[indexPath.item] {
            cell.profile = items
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width - 20, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

