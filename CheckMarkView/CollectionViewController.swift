//
//  CollectionViewController.swift
//  CheckMarkView
//
//  Created by Maxim on 7/18/15.
//  Copyright (c) 2015 Maxim. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

	// MARK: - Constants
	
	static let reuseIdentifier = "Cell"
	
	// MARK: - Outlets
	
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var checkMarkView: CheckMarkView!
	
}

class CollectionViewController: UICollectionViewController {

    // MARK: - UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseIdentifier, for: indexPath as IndexPath) as! CollectionViewCell
		
		let imageName = String("image\(indexPath.row + 1).png")
		cell.imageView.image = UIImage(named: imageName)
		cell.checkMarkView.style = .grayedOut
		cell.checkMarkView.setNeedsDisplay()
		
		return cell
	}

    // MARK: - UICollectionViewDelegate

	override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		let cell = collectionView.cellForItem(at: indexPath as IndexPath) as! CollectionViewCell
		cell.checkMarkView.checked = !cell.checkMarkView.checked
	}
	
}
