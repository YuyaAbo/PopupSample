import UIKit

class TriangleView: UIView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        drawTriangle()
    }
    
    private func drawTriangle() {
        let path = trianglePath()
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        
        layer.masksToBounds = true
        layer.mask = mask
        
        let borderShape = CAShapeLayer()
        borderShape.path = path.cgPath
        borderShape.lineWidth = 4.0
        borderShape.fillColor = UIColor.clear.cgColor
        layer.insertSublayer(borderShape, at: 0)
    }

    private func trianglePath() -> UIBezierPath {
        let rect = frame
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        path.addLine(to: CGPoint(x: rect.width/2, y: rect.height))
        path.close()
        return path
    }

}
