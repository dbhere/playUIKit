//
//  SentMemeTableViewController.swift
//  imagePlayGround
//
//  Created by HhhotDog on 16/3/17.
//  Copyright © 2016年 Alexscott. All rights reserved.
//

import UIKit

class SentMemeTableViewController:UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete{
            delegate.memes.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return delegate.memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("memeCell")!
        let meme = delegate.memes[indexPath.row]
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = meme.topText! + meme.bottomText!
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let VC = self.storyboard!.instantiateViewControllerWithIdentifier("memeViewController") as! ViewController
        let meme = delegate.memes[indexPath.row]
        VC.oldMeme = meme
        presentViewController(VC, animated: true, completion: nil)
    }
    
    @IBAction func createAnMeme(sender: AnyObject) {
        let VC = self.storyboard!.instantiateViewControllerWithIdentifier("memeViewController") as! ViewController
        presentViewController(VC, animated: true, completion: nil)
    }
    
    
    
}