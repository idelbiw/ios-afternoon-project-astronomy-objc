//
//  DetailViewController.swift
//  Astronomy - Objective-C and Swift
//
//  Created by Waseem Idelbi on 10/1/20.
//

import UIKit

class DetailViewController: UIViewController {

    /// - Properties
    //TODO: model controller instance
    
    /// - IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoDetailsLabel: UILabel!
    @IBOutlet weak var cameraDetailsLabel: UILabel!
    
    /// - IBActions
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        
    }
    
    /// - Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        //TODO: fetch image from api
    }

}
