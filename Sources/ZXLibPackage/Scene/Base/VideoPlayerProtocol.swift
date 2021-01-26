//
//  VideoPlayerProtocol.swift
//  JKLiveVideo
//
//  Created by wangzhaoxiang on 2020/10/23.
//  Copyright © 2020 wangzhaoxiang. All rights reserved.
//

import Foundation

public protocol VideoPlayerProtocol {
    func start()
    func resume()
    func pause()
    func add(plugin: ZXVideoPlugin)
    func remove(plugin: ZXVideoPlugin)
}
