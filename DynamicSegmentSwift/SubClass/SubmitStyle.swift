//
//  SubmitStyle.swift
//  DynamicSegmentSwift
//
//  Created by jay sabeen on 09/01/24.
//

import UIKit

class SubmitStyle: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    public override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        commonInit()
    }
    
    private func commonInit() {
        self.maskedCorner(radious: self.frame.size.height/2)
    }

}
