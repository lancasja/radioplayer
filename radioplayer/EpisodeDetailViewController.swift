//
//  EpisodeDetailViewController.swift
//  radioplayer
//
//  Created by Jonathan on 3/27/15.
//  Copyright (c) 2015 jaml. All rights reserved.
//

import UIKit

class EpisodeDetailViewController: UIViewController {

    @IBOutlet var episodeTitleLabel: UILabel!
    
    var episodeTitle = String()
    
    override func viewWillAppear(animated: Bool) {
        episodeTitleLabel.text = episodeTitle
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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