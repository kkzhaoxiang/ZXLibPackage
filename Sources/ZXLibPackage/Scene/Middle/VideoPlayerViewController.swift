//
//  VideoPlayerViewController.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/23.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit

class VideoPlayerViewController: UIViewController {
    
    var video: ZXVideo
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public lazy var mainVideoView: ZMVideoView = {
        let videoView = ZMVideoView()
        return videoView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        video = ZXVideo()

        video.url = "www.baidu.com"
        video.videoId = "111"
        
        if let d = video.toJSONString() {
            print(d)
        }
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
