import IDwallToolkit
import UIKit

/// Reference: https://colors.eva.design/
/// Try to use the colors from this site, the SDK colours are all based upon the "Brand color".

extension UIColor {
convenience init(hex: String) {
    let scanner = Scanner(string: hex)
    scanner.scanLocation = 0

    var rgbValue: UInt64 = 0

    scanner.scanHexInt64(&rgbValue)

    let r = (rgbValue & 0xff0000) >> 16
    let g = (rgbValue & 0xff00) >> 8
    let b = rgbValue & 0xff

    self.init(
        red: CGFloat(r) / 0xff,
        green: CGFloat(g) / 0xff,
        blue: CGFloat(b) / 0xff, alpha: 1
    )
    }
}

class ColorScheme: IDwallColorScheme {
    
    /// Used in all backgrounds.
    func sdkBackground() -> UIColor! {
      return .white
    }

    // MARK:- SDK Main tones
    
    /// Main color, used in highlighted assets and highlighted backgrounds.
    func sdkPrimary() -> UIColor! {
        return .init(hex:"FF9900")
    }
    
    /// The following two tones should go from the primary and up in terms of lightness.
    /// Be carefull with contrast, primary, secundary and tertiary must constrast with each other.
    func sdkSecundary() -> UIColor! {
        return .init(hex:"FF9900")
    }
    
    func sdkTertiary() -> UIColor! {
        return .init(hex:"ffe0b3")
    }
    
    /// This is a suplementary color, can be similar to tertiary but lighter.
    func sdkQuaternary() -> UIColor! {
        return .init(hex:"FF9900")
    }
    
    /// Color for all shadows of the cards, use a darker version of the background color
    func shadowPrimary() -> UIColor! {
        return .init(hex:"FF9900")
    }
    
    /// Main color for all completed steps, use green-like colors.
    func successPrimary() -> UIColor! {
        return .init(hex: "85BC0D")
    }
    
    /// Secundary color for all completed steps, use as the main color but lighter
    func successSecundary() -> UIColor! {
        return .init(hex: "F5FDCE")
    }
    
    // MARK:- SDK Texts
    
    /// Highlighted texts, must contrast with background color and reference the primary color.
    /// Good practice is to use the same as the primary color.
    func textPrimary() -> UIColor! {
        return .white
    }
    
    /// Texts in default state, must contrast with background color and be a neutral color (e.g. grayscales).
    func textSecundary() -> UIColor! {
         return .init(hex:"FF9900")
    }
    
    /// Texts in unselected state, must contrast with background color and be a neutral color (e.g. grayscales) but less flashy than the textSecundary.
    func textTerciary() -> UIColor! {
       return .init(hex:"FF9900")
    }
    
    /// Texts inside buttons, must contrast with primary color.
    func buttonText() -> UIColor! {
        return .white
    }
    
    /// Used in warning labels and assets.
    func warningPrimary() -> UIColor! {
        return .red
    }
}
