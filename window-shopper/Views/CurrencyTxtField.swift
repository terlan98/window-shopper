//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Tarlan Ismayilsoy on 1/4/19.
//  Copyright © 2019 Tarlan Ismayilsoy. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField
{
    override func draw(_ rect: CGRect)
    {
        let size: CGFloat = 25
        
        let currencyLbl = UILabel(frame: CGRect(x: size/4, y: (frame.size.height - size)/2
            , width: size + 15, height: size))
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8819576414, green: 0.8819576414, blue: 0.8819576414, alpha: 0.8015839041)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder()
    {
        customizeView()
    }
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView()
    {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        
        if let p = placeholder
        {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
