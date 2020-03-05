//
//  EffectsViewController.swift
//  Fotoroid
//
//  Created by Lucas Inocencio on 22/12/2017.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class EffectsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viLoading: UIView!
    @IBOutlet weak var ivPhoto: UIImageView!
    
    
    var image: UIImage!
    lazy var filterManager: FilterManager = {
        let filterManager = FilterManager(image: image)
        return filterManager
    }()
    
    let filterImageNames = [
        "comic", "sepia", "halftone", "crystallize", "vignette", "noir"
    ]
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ivPhoto.image = image
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! FinalViewController
        vc.image = ivPhoto.image
    }
    
    func showLoading(show: Bool) {
        viLoading.isHidden = !show
    }

}

extension EffectsViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filterManager.filterNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! EffectsCollectionViewCell
        
        cell.ivEffect.image = UIImage(named: filterImageNames[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let type = FilterType(rawValue: indexPath.row) {
            showLoading(show: true)
            DispatchQueue.global(qos: .userInitiated).async {
                let filteredImage = self.filterManager.applyFilter(type: type)
                DispatchQueue.main.async {
                    self.ivPhoto.image = filteredImage
                    self.showLoading(show: false)
                }
            }
        }
    }
}


