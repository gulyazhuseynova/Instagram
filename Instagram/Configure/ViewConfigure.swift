//
//  ViewConfigure.swift
//  Instagram
//
//  Created by Gulyaz Huseynova on 09.08.22.
//

import Foundation
import UIKit

func viewLoc (XCoordinate : CGFloat, YCoordinate: CGFloat) -> UIView {
    
    //iPhone 11 was taken as reference size considering that ratio is the same for all screens.
    
    let screenHeight = UIScreen.main.bounds.height // finding the height of the phone that the app is running in
    let viewHeight:CGFloat = screenHeight / (896/123)
    
    let screenWidth = UIScreen.main.bounds.width
    let viewWidth:CGFloat = screenWidth
    
    let ratioX = 414 / screenWidth
    let paddingX = CGFloat(((XCoordinate + 207) / ratioX) - viewWidth / 2)

    let ratioY = 896 / screenHeight
    let paddingY = CGFloat(((YCoordinate + 61.5) / ratioY) -  viewHeight / 2)
   
    
    let view = UIView(frame: CGRect(x: paddingX, y: paddingY, width: viewWidth, height: viewHeight))
    view.backgroundColor=UIColor.white
    
    return view
}

func buttonLoc (imageName: String, XCoordinate : CGFloat, YCoordinate: CGFloat) -> UIButton{
    
    let screenHeight = UIScreen.main.bounds.height
    let buttonHeight:CGFloat = screenHeight / 22.4
    
    let screenWidth = UIScreen.main.bounds.width
    let buttonWidth:CGFloat = buttonHeight * 1.087
    
    let ratioX = 414 / screenWidth
    let paddingX = CGFloat(((XCoordinate + 21.5) / ratioX) - buttonWidth / 2)

    let ratioY = 896 / screenHeight
    let paddingY = CGFloat(((YCoordinate + 20) / ratioY) -  buttonHeight / 2)
   
    
    let button = UIButton(type: .custom)
    button.frame = CGRect(x: paddingX, y: paddingY, width: buttonWidth, height: buttonHeight)
    button.setImage(UIImage(named: imageName), for: .normal)
    
    return button
}

func labelLoc (labelText: String, labelFont: String, XCoordinate:CGFloat, YCoordinate: CGFloat) -> UILabel{
    
    let screenHeight = UIScreen.main.bounds.height
    let labelHeight:CGFloat = screenHeight / 17.92
    
    let screenWidth = UIScreen.main.bounds.width
    let labelWidth:CGFloat = labelHeight * 3
    
    let fontSize: CGFloat = labelHeight / 1.25
    
    let ratioX = 414 / screenWidth
    let paddingX = CGFloat(((XCoordinate + 75) / ratioX) - labelWidth / 2)

    let ratioY = 896 / screenHeight
    let paddingY = CGFloat(((YCoordinate + 25) / ratioY) -  labelHeight / 2)
    
    let label = UILabel(frame: CGRect(x: paddingX, y: paddingY, width: labelWidth, height: labelHeight))
    label.textAlignment = .center
    label.text = labelText
    label.font = UIFont(name: labelFont, size: fontSize)
    
    return label
    
}
