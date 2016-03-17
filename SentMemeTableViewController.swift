//
//  SentMemeTableViewController.swift
//  imagePlayGround
//
//  Created by HhhotDog on 16/3/17.
//  Copyright © 2016年 Alexscott. All rights reserved.
//

import UIKit

class SentMemeTableViewController:UITableViewController{
    
    
    
    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("memeCell")!
        let meme = delegate.memes[indexPath.row]
        cell.imageView?.image = meme.image
        cell.textLabel?.text = meme.topText! + meme.bottomText!
        return cell
    }
    
    @IBAction func createAnMeme(sender: AnyObject) {
        let VC = self.storyboard!.instantiateViewControllerWithIdentifier("memeViewController") as! ViewController
        presentViewController(VC, animated: true, completion: nil)
    }
    
    
    
}