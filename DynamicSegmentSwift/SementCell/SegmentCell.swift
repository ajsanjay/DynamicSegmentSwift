//
//  SegmentCell.swift
//  DynamicSegmentSwift
//
//  Created by jay sabeen on 09/01/24.
//

import UIKit

class SegmentCell: UIView {

    @IBOutlet weak var setTitle: UILabel!
    @IBOutlet weak var segmentButton: UIButton!
    
    var getSelectedIndex: SegmentProtocol?
    var currentIndex: Int?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience required init() {
        self.init(frame: CGRect.zero)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    func comonInit(title: String, isSelected: Bool, index: Int) {
        currentIndex = index
        let bundle = Bundle.init(for: SegmentCell.self)
        if let viewToAdd = bundle.loadNibNamed("SegmentCell", owner: self, options: nil), let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            setTitle.text = title
            setTitle.textColor = isSelected == true ? .white : .black
            self.backgroundColor = isSelected == true ? .lightGray : .white
            self.maskedCorner(radious: 10)
            segmentButton.addTarget(self, action: #selector(selectedSegment), for: .touchUpInside)
        }
    }
    
    @objc func selectedSegment() {
        getSelectedIndex?.getSelectedIndex(index: currentIndex ?? 0)
    }
    
}
