//
//  ArtView.swift
//  ArtProject
//
//  Created by Phillips, Ryan on 11/1/18.
//  Copyright © 2018 Phillips, Ryan. All rights reserved.
//

import UIKit

public class ArtView: UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStrickFigure().stroke()
        drawTurtle()
        drawPentagon()
    }
    
    
    private func createStrickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.init(red: CGFloat(176), green: CGFloat(224), blue: CGFloat(230), alpha: CGFloat(100)).setStroke()
       
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y:270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y:240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.init(red: CGFloat(176), green: CGFloat(224), blue: CGFloat(230), alpha: CGFloat(100)).setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
    }
    
    private func drawPentagon() -> Void
    {
        let logo = UIBezierPath()
        UIColor.init(red: CGFloat(176), green: CGFloat(224), blue: CGFloat(230), alpha: CGFloat(100))
        logo.move(to: CGPoint(x: 200, y: 30))
        logo.addLine(to: CGPoint(x: 150, y: 30))
        logo.addLine(to: CGPoint(x: 242.55, y: 285))
    }

}
