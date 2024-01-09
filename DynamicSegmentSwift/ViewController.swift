//
//  ViewController.swift
//  DynamicSegmentSwift
//
//  Created by jay sabeen on 09/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var noOfSegments: UITextField!
    @IBOutlet weak var createSegment: SubmitStyle!
    @IBOutlet weak var errorLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.errorLbl.isHidden = true
        self.createSegment.addTarget(self, action: #selector(proceedNext), for: .touchUpInside)
    }
    
    @objc func proceedNext() {
        let noOfSegment = Int(noOfSegments.text ?? "")
        if noOfSegment != nil {
            let segmentVC = UISegments.loadFromNib()
            segmentVC.modalPresentationStyle = .fullScreen
            segmentVC.noOfSegments = noOfSegment ?? 0
            self.present(segmentVC, animated: true)
        } else {
            self.errorLbl.isHidden = false
            perform(#selector(hideLabel), with: nil, afterDelay: 2.0)
        }
    }
    
    @objc func hideLabel() {
        self.errorLbl.isHidden = true
    }

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}

