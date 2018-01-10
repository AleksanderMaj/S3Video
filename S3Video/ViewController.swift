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

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var playButton: UIButton!
    let playerVC = AVPlayerViewController()

    var videoItem: AVPlayerItem {
        let videoItem = AVPlayerItem(asset: videoAsset)
        return videoItem
    }

    var videoAsset: AVURLAsset {
        let url = URL(string: "https://s3-eu-west-1.amazonaws.com/aleksandermajhtd/IMG_0987.m4v")!
        let asset = AVURLAsset(url: url)
        return asset
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let player = AVPlayer(playerItem: videoItem)
        playerVC.player = player

        addChildViewController(playerVC)
        self.containerView.addSubviewAndConstraintToEdges(playerVC.view)
        playerVC.didMove(toParentViewController: self)

        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func playButtonTapped() {
        playerVC.player?.play()
    }

}

