//
//  ViewController.swift
//  Video_Player
//
//  Created by Taha Jalili on 24.11.22.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		
		playVideo()
	
	}
	
	
	private func playVideo(){
		//finding the video
		guard let path = Bundle.main.path(forResource: "test", ofType: "mp4") else{
			debugPrint("test.mp4 not found.")
			
			return
		}
		
		let player = AVPlayer(url: URL(fileURLWithPath: path))
		let playerController = AVPlayerViewController()
		playerController.player = player
		
		present(playerController, animated: true){
			player.play()
		}
	}
	

}

