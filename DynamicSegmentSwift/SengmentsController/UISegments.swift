//
//  UISegments.swift
//  DynamicSegmentSwift
//
//  Created by jay sabeen on 09/01/24.
//

import UIKit

class UISegments: UIViewController {
    
    @IBOutlet weak var scrollStacks: UIScrollView!
    @IBOutlet weak var stack: UIStackView!
    
    var noOfSegments: Int = 0
//    var segments: [SegmentCell] = []
    var selectedSegment: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        print("No of segments needed = \(noOfSegments)")
        setupSegments()
    }
    
    func setupSegments() {
        
        for view in stack.subviews {
            if view.isKind(of: SegmentCell.self) {
                view.removeFromSuperview()
            }
        }
               
        for i in 0...noOfSegments - 1 {
            let cell = SegmentCell()
            cell.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 90, height: 90))
            cell.comonInit(title: "Index \(i)", isSelected: selectedSegment == nil ? false : (i == selectedSegment ? true : false), index: i)
            cell.getSelectedIndex = self
            stack.addArrangedSubview(cell)
        }
    }

}

extension UISegments: SegmentProtocol {
    
    func getSelectedIndex(index: Int) {
        selectedSegment = index
        print("Selected Index \(index)")
        setupSegments()
    }
    
}
