//
//  CollectionViewController.swift
//  CheckMarkView
//
//  Created by Maxim on 7/18/15.
//  Copyright (c) 2015 Maxim. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

class CollectionViewCell: UICollectionViewCell {
	@IBOutlet weak var imageView: UIImageView!
	@IBOutlet weak var checkMarkView: CheckMarkView!
}

class CollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
		
		let imageName = String("image\(indexPath.row + 1).png")
		cell.imageView.image = UIImage(named: imageName)
		cell.checkMarkView.style = .GrayedOut
		cell.checkMarkView.setNeedsDisplay()
    
        return cell
    }

    // MARK: UICollectionViewDelegate

	override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
		let cell = collectionView.cellForItemAtIndexPath(indexPath) as! CollectionViewCell
		cell.checkMarkView.checked = !cell.checkMarkView.checked
	}
	
}
