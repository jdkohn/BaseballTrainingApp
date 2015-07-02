//
//  PlayerViewController.swift
//  BasballTrainingApp
//
//  Created by Jacob Kohn on 6/25/15.
//  Copyright (c) 2015 Jacob Kohn. All rights reserved.
//

import UIKit
import Player

class PlayerViewController: Player, PlayerDelegate {

    override func viewDidLoad() {
        
        self.player = Player()
        self.player.delegate = self
        self.player.view.frame = self.view.bounds
        
        self.addChildViewController(self.player)
        self.view.addSubview(self.player.view)
        self.player.didMoveToParentViewController(self)
    }

    
    
    
    func playerReady(player: Player) {}
    func playerPlaybackStateDidChange(player: Player) {}
    func playerBufferingStateDidChange(player: Player) {}
    
    func playerPlaybackWillStartFromBeginning(player: Player) {}
    func playerPlaybackDidEnd(player: Player) {}
    
    
}