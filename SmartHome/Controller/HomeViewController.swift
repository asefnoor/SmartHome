//
//  ViewController.swift
//  SmartHome
//
//  Created by Asif on 2019-07-05.
//  Copyright © 2019 Asif. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, CAAnimationDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var smartACAdapterLabel: UILabel!
    @IBOutlet weak var menuButton: UIButton!
    
    private var usersBrightness = UIScreen.main.brightness

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        if let revealController = self.revealViewController() {
                view.addGestureRecognizer((revealController.panGestureRecognizer()))
                view.addGestureRecognizer((revealController.tapGestureRecognizer()))
            
        }
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        smartACAdapterLabel.font = UIFont.appHeavyFontWith(size: 20)
        smartACAdapterLabel.textColor = App.Color.grey
        menuButtonPressed()
    }
    
    
    func menuButtonPressed() {
            print("menu button pressed")
//        UIView.animate(withDuration: 3.0, delay: 0.0, options: UIView.AnimationOptions.curveEaseOut, animations: {
//                        self.view.alpha = 0.5
//                        }, completion: {
//                                (finished: Bool) -> Void in
//
//                            //Once the label is completely invisible, set the text and fade it back in
//
//
//                                // Fade in
//                            UIView.animate(withDuration: 1.0, delay: 1.0, options: UIView.AnimationOptions.transitionCurlUp, animations: {
//                                    self.view.alpha = 1.0
//                                    }, completion: nil)
//                    })
    }

    

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "ButtonCell") {
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell") {
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            
            if let schedulerView = Bundle.main.loadNibNamed("SchedulerView", owner: self, options: nil)?.first as? SchedulerView {
                schedulerView.frame.origin = CGPoint(x: 0, y: view.frame.height - schedulerView.frame.height)
                self.view.addSubview(schedulerView)
            }
        }
    }
   
    
    
}



