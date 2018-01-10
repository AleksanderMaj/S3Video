//
//  ViewController.swift
//  S3Video
//
//  Created by Aleksander Maj on 10/01/2018.
//  Copyright © 2018 Aleksander Maj. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    @IBOutlet weak var playButton: UIButton!

    lazy var videoItem: AVPlayerItem = {
        let videoItem = AVPlayerItem(asset: videoAsset)
        return videoItem
    }()

    lazy var videoAsset: AVURLAsset = {
        let url = URL(string: "https://s3-eu-west-1.amazonaws.com/aleksandermajhtd/IMG_0987.m4v")!

        //let url = URL(string: "https://s3-eu-west-1.amazonaws.com/svideo-hosting-mobilehub-588546466/example-video-1.mp4")!
        let asset = AVURLAsset(url: url)
        return asset
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func playButtonTapped() {
        let player = AVPlayer(playerItem: videoItem)
        let playerVC = AVPlayerViewController()
        playerVC.player = player
        present(playerVC, animated: true) {
            playerVC.player?.play()
        }
    }

}

