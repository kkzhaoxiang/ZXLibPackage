//
//  ZXVideoView.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/22.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import UIKit

public class ZXVideoView: UIView {

    weak var delegate: ZXVideoPlayerDelegate?
    
    

}

// MARK: - control
extension ZXVideoView {
    private func start() {
        
    }
    
    private func pause() {
        
    }
    
    private func stop() {
        
    }
    
    private func seek(toTime time: TimeInterval) {
        
    }
    
    private func lockScreen() {
        
    }
    
    private func unlockScreen() {
        
    }
    
    private func set(speed spd: CGFloat) {
        
    }
    
    private func fullScreen() {
        
    }
    
    private func resetFullScreen() {
        
    }
    
    private func reset() {
        
    }
}

extension ZXVideoView : ZXVideoPlayerDelegate {
    
    func videoPlay(_ videoView: ZXVideoView, successFor video: ZXVideo) {
        delegate?.videoPlay(videoView, successFor: video)
    }
    func videoPlay(_ videoView: ZXVideoView, endFor video: ZXVideo) {
        delegate?.videoPlay(videoView, endFor: video)
    }
    
    func videoPlay(_ videoView: ZXVideoView, failedFor video: ZXVideo) {
        delegate?.videoPlay(videoView, failedFor: video)
    }
}

