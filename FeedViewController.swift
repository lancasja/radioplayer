//
//  FeedViewController.swift
//  radioplayer
//
//  Created by Jonathan on 3/27/15.
//  Copyright (c) 2015 jaml. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    // Hard coded data source, needs replaced by an RSS feed
    let episodes = ["Ray Wenderlich", "NSHipster", "iOS Developer Tips", "Jameson Quave", "Natasha The Robot", "Coding Explorer", "That Thing In Swift", "Andrew Bancroft", "iAchieved.it", "Airspeed Velocity"]
    
    let episodeCellIdentifier = "EpisodeCell"
    let episodeSegueIdentifier = "EpisodeDetailSegue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == episodeSegueIdentifier {
            if let destination = segue.destinationViewController as? EpisodeDetailViewController {
                if let episodeIndex = tableView.indexPathForSelectedRow()?.row {
                    destination.episodeTitle = episodes[episodeIndex]
                }
            }
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(episodeCellIdentifier) as? UITableViewCell
        let row = indexPath.row
        
        cell?.textLabel?.text = episodes[row]
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let row = indexPath.row
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
