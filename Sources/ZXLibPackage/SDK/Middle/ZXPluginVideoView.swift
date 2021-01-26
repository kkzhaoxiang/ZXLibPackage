//
//  ZXPluginVideoView.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/22.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit


public class ZXPluginVideoView: UIView {

    lazy var plugins: NSMapTable<NSString, ZXVideoPlugin> = {
        let ps = NSMapTable<NSString, ZXVideoPlugin>(keyOptions: .strongMemory, valueOptions: .weakMemory)
        return ps
    }()
    
    private var mainVideoView: ZXVideoView
    
    public override init(frame: CGRect) {
        self.mainVideoView = ZXVideoView(frame: frame)
        super.init(frame: frame)
    }
    
    
    init(with videoView: ZXVideoView) {
        self.mainVideoView = videoView
        super.init(frame: CGRect.zero)

    }
    
    init(with video: ZXVideo) {
        self.mainVideoView = ZXVideoView()
        super.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ZXPluginVideoView {
    public var videoView: ZXVideoView {
        return mainVideoView
    }
}

extension ZXPluginVideoView {
    public func add(plugin: ZXVideoPlugin?) {
        guard let plugin = plugin else {
            return
        }
        
        plugin.videoView = videoView
        plugins.setObject(plugin, forKey: plugin.pluginName)
    }
    
    public func remove(plugin: ZXVideoPlugin?) {
        guard let plugin = plugin else {
            return
        }
        if let subView = plugin.delegate?.pluginSubView() {
            addSubview(subView)
            plugin.delegate?.pluginComplete(withSuperView: self)
        }
        plugins.removeObject(forKey: plugin.pluginName)
    }
}

extension ZXPluginVideoView {
    public func start() {
        
    }
    
    public func pause() {
        
    }
    
    public func stop() {
        
    }
}

extension  ZXPluginVideoView: ZXVideoPlayerDelegate {
    func videoPlay(_ videoView: ZXVideoView, successFor video: ZXVideo) {
        
    }
    
    func videoPlay(_ videoView: ZXVideoView, endFor video: ZXVideo) {
        
    }
    
    func videoPlay(_ videoView: ZXVideoView, failedFor video: ZXVideo) {
        
    }
}
