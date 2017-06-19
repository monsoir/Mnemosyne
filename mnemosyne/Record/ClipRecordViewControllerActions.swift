//
//  ClipRecordViewControllerActions.swift
//  mnemosyne
//
//  Created by Mon on 19/06/2017.
//  Copyright © 2017 wenyongyang. All rights reserved.
//

import UIKit

extension ClipRecordViewController {
    @objc func actionBack() {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func actionTouchUpInside(sender: UIButton) {
        sender.alpha = 1.0
        
        if sender == btnTapRecord {
            recordStatus = recordStatus == .recording ? .recorded : .recording
        } else if sender == btnHoldRecord {
            recordStatus = .recorded
        }
    }
    
    @objc func actionTouchDown(sender: UIButton) {
        sender.alpha = 0.5
        
        if sender == btnHoldRecord {
            recordStatus = .recording
        }
    }
    
    @objc func actionTouchUpOutside(sender: UIButton) {
        sender.alpha = 1.0
        
        if recordStatus == .recorded { return }
        recordStatus = .cancelRecording
    }
    
    func startRecording() {
        print("start recording")
    }
    
    func finishRecording() {
        print("stop recording")
    }
    
    func cancelRecording() {
        print("cancel recording")
        recordStatus = .notRecording
    }
    
    /// 改变录制方式
    @objc func actionChangeRecordMethod(sender: UIButton) {
        recordMethod = sender == btnTapToRecord ? .tap : .hold
    }
    
    /// 开关灯
    @objc func actionToggleLight(sender: UIButton) {
        recordStatus = .notRecording
    }
    
    /// 录制结果处理
    @objc func actionDiscardRecorded(sender: UIButton) {
        recordStatus = .notRecording
    }
    
    @objc func actionConfirmRecorded(sender: UIButton) {
        
    }
}