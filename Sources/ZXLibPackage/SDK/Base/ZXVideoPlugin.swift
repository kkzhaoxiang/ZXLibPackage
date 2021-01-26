//
//  ZXVideoPlugin.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/22.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit
 
public class ZXVideoPlugin: NSObject {
    
    public var pluginName: NSString {
        return NSStringFromClass(self.classForCoder) as NSString
    }
    
    public weak var delegate: ZXPluginVideoPlayerDelegate?
    public weak var videoView: ZXVideoView?
    
    public override init() {
        super.init()
        delegate = self
    }

}

extension ZXVideoPlugin: ZXPluginVideoPlayerDelegate {
    func videoPlay(_ videoView: ZXVideoView, successFor video: ZXVideo) {
        
    }
    
    func videoPlay(_ videoView: ZXVideoView, endFor video: ZXVideo) {
        
    }
    
    func videoPlay(_ videoView: ZXVideoView, failedFor video: ZXVideo) {
        
    }
}
