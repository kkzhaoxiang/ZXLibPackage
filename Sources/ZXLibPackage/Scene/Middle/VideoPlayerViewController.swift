//
//  VideoPlayerViewController.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/23.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit

class VideoPlayerViewController: UIViewController {
    
    public lazy var mainVideoView: ZMVideoView = {
        let videoView = ZMVideoView()
        return videoView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension VideoPlayerViewController  {
    var plugins: NSMapTable<NSString, ZXVideoPlugin> {
        return mainVideoView.plugins
    }
}

extension VideoPlayerViewController {
    func start() {
        
    }
    func resume() {
        
    }
    func pause() {
        
    }
    func add(plugin: ZXVideoPlugin) {
        mainVideoView.add(plugin: plugin)
    }
    func remove(plugin: ZXVideoPlugin) {
        mainVideoView.remove(plugin: plugin)
    }
}
