//
//  sentMemeCollectionViewController.swift
//  imagePlayGround
//
//  Created by HhhotDog on 16/3/18.
//  Copyright © 2016年 Alexscott. All rights reserved.
//

import UIKit

class sentMemeCollectionViewController:UICollectionViewController {
    @IBOutlet weak var collectionLayout: UICollectionViewFlowLayout!

    override func viewDidLoad() {
        super.viewDidLoad()
        let space:CGFloat = 3.0
        var demention:CGFloat = (self.view.frame.height - 2 * space) / 3.0
        
        if UIDeviceOrientationIsLandscape(UIDevice.currentDevice().orientation){
            demention = (self.view.frame.width - 4 * space) / 5.0
        }
        
        collectionLayout.minimumLineSpacing = space
        collectionLayout.minimumInteritemSpacing = space
        collectionLayout.itemSize = CGSize(width: demention, height: demention)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        collectionView?.reloadData()
    }
    
    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return delegate.memes.count
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let VC = self.storyboard!.instantiateViewControllerWithIdentifier("memeViewController") as! ViewController
        let meme = delegate.memes[indexPath.row]
        VC.oldMeme = meme
        presentViewController(VC, animated: true, completion: nil)
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("memeCollectionCell", forIndexPath: indexPath) as! MemeCollectionViewCell
        let meme = delegate.memes[indexPath.row]
        cell.memeImageView.image = meme.memedImage
        return cell
    }
    
    
}
