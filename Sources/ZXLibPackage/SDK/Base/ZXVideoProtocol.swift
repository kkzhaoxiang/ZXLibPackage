//
//  ZXVideoProtocol.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/22.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit

public protocol ZXVideoPlayerDelegate: class { }

extension ZXVideoPlayerDelegate {
    func videoPlay(_ videoView: ZXVideoView, successFor video: ZXVideo) { }
    func videoPlay(_ videoView: ZXVideoView, endFor video: ZXVideo) { }
    func videoPlay(_ videoView: ZXVideoView, failedFor video: ZXVideo) { }
}

public protocol ZXPluginVideoPlayerDelegate: ZXVideoPlayerDelegate { }

extension ZXPluginVideoPlayerDelegate {
    func pluginSubView() -> UIView? {
        return nil
    }
    
    func pluginComplete(withSuperView superView: ZXPluginVideoView) { }
}
