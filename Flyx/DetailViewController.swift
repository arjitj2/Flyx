//
//  DetailViewController.swift
//  Flyx
//
//  Created by Arjit Jaiswal on 1/30/16.
//  Copyright © 2016 Arjit Jaiswal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var infoView: UIView!
    var movie: NSDictionary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.height)
        
        titleLabel.text = movie!["title"] as? String
        overviewLabel.text = movie!["overview"] as? String
        overviewLabel.sizeToFit()
        
        let base_url = "http://image.tmdb.org/t/p/w500"
        if let poster_path = movie!["poster_path"] as? String {
        let imageURL = NSURL(string: base_url + poster_path)
        posterImageView.setImageWithURL(imageURL!)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
