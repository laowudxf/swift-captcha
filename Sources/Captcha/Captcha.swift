import SwiftGD
import Foundation

public let defaultFontPath = Bundle.module.url(forResource: "MarkerFelt", withExtension: "ttc")
public extension Color {
    static func random() -> Color {
        .init(red: Double.random(in: 0..<1), green: .random(in: 0..<1), blue: .random(in: 0..<1), alpha: 1)
    }
}

public func drawContent(content: String, width: Int = 80, height: Int = 30, FontSize: Int = 16) -> Image? {
    guard let fontPath = defaultFontPath else {
        return nil
    }
    
    let image = Image(width: width, height: height)
    image?.fill(from: .zero, color: .white)
    //        let fontPath = "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf"
    // let fontPath = "DejaVuSansMono"
    
    let space = 5
    let y = height - ((height - FontSize - 1) / 2)
    for (index, c) in content.enumerated() {
        let point = Point.init(x: index * (width - 2 * space) / content.count + space , y: y)
        let angle = Double.random(in: -10..<15)
        image?.renderText(String(c), from: point, fontList: [fontPath.path], color: Color.random(), size: 16,
                          angle: .init(degrees: angle))
    }
    return image
}
