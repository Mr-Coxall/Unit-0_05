// Created on: Jan-2017
// Created by: Mr. Coxall
// Created for: ICS3U
// This program does basic math, using UIKit

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    var equation1Label : UILabel!
    var equation2Label : UILabel!
    var equation3Label : UILabel!
    var equation4Label : UILabel!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        equation1Label = UILabel()
        equation1Label.text = "7 - 3 + 2 = \(7 - 3 + 2)"
        view.addSubview(equation1Label)
        equation1Label.translatesAutoresizingMaskIntoConstraints = false
        equation1Label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        equation1Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        equation2Label = UILabel()
        equation2Label.text = "4 / 2 + 5 = \(4 / 2 + 5)"
        view.addSubview(equation2Label)
        equation2Label.translatesAutoresizingMaskIntoConstraints = false
        equation2Label.topAnchor.constraint(equalTo: equation1Label.bottomAnchor, constant: 20).isActive = true
        equation2Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        equation3Label = UILabel()
        equation3Label.text = "5 + 2 ^ 3 = \(5 + pow(2, 3))"
        equation3Label.textAlignment = .center
        view.addSubview(equation3Label)
        equation3Label.translatesAutoresizingMaskIntoConstraints = false
        equation3Label.topAnchor.constraint(equalTo: equation2Label.bottomAnchor, constant: 20).isActive = true
        equation3Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        equation4Label = UILabel()
        equation4Label.text = "3 + 4 * 2 = \(3 + 4 * 2)"
        equation4Label.textAlignment = .center
        view.addSubview(equation4Label)
        equation4Label.translatesAutoresizingMaskIntoConstraints = false
        equation4Label.topAnchor.constraint(equalTo: equation3Label.bottomAnchor, constant: 20).isActive = true
        equation4Label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()