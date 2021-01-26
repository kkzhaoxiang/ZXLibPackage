//
//  ZMVideoView.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/23.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit

class ZMVideoView: UIView {

    public lazy var pluginVideoView: ZXPluginVideoView = {
        let pv = ZXPluginVideoView()
        return pv
    }()
    
//    public lazy var plugins: NSMapTable<NSString, ZXVideoPlugin> = {
//        let pls = NSMapTable<NSString, ZXVideoPlugin>(keyOptions: .strongMemory, valueOptions: .weakMemory)
//        return pls
//    }()

}

extension ZMVideoView {
    var plugins: NSMapTable<NSString, ZXVideoPlugin> {
        return pluginVideoView.plugins
    }
}

extension ZMVideoView {
    func add(plugin: ZXVideoPlugin) {
        pluginVideoView.add(plugin: plugin)
    }
    
    func remove(plugin: ZXVideoPlugin) {
        pluginVideoView.remove(plugin: plugin)
    }
}

extension ZMVideoView {
    public func start() {
          
      }
      
      public func pause() {
          
      }
      
      public func stop() {
          
      }
}

extension ZMVideoView: ZXPluginVideoPlayerDelegate {
    func videoPlay(_ videoView: ZXVideoView, successFor video: ZXVideo) {
        
    }
    
    func videoPlay(_ videoView: ZXVideoView, endFor video: ZXVideo) {
        
    }
    
    func videoPlay(_ videoView: ZXVideoView, failedFor video: ZXVideo) {
        
    }
}
