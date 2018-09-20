//
//  WisdomIMKitConfig.swift
//  WisdomIMKit
//
//  Created by jianfeng on 2018/9/19.
//  Copyright © 2018年 All over the sky star. All rights reserved.
//

import UIKit

public let heartBeatTimeMin = 10
public let heartBeatTimeMax = 180
public let kMaxReconnection_time = 6
public let beatLimit = 5

//设备信号变化通知
public let WisdomSessionChangeNotificationKey = "WisdomSessionChangeNotificationKey"
//IM连接状态变化通知
public let WisdomIMConnectChangeNotificationKey = "WisdomIMConnectChangeNotificationKey"

//IM连接状态判断
@objc public enum WisdomIMConnectType: Int {
    case UnConnect = 0                    // 未连接
    case ConnectRequest = 1               // 连接请求中
    case SuccessConnect = 2               // 连接成功
    case FalesConnect = 3                 // 连接失败
    case SynchronUserInfo = 4             // 服务器同步数据中
    case SuccessSynchronUserInfo = 5      // 服务器同步数据成功
}

//网络信号状态判断
@objc public enum WisdomSessionType: NSInteger {
    case sessionNone=0      //无网络
    case sessionCellular=1  //移动网络
    case sessionWifi=2      //Wifi
}

//当前网络任务操作事件
@objc public enum WisdomSessionTaskEvent: NSInteger {
    case commonEvent=0     //无事件
    case invokeEvent=1     //invoke自定义主动事件
    case sendEvent=2      //send自定义主动事件
}

@objc public protocol WisdomIMKitManagerDelegate  {
    //im用户数据同步协议
    func sessionSynchronUserInfo(info: [String:Any])
    
    //im聊天列表消息协议
    func didReadDataInfo(data: [Any])
}

