import UIKit

extension UIImage {
    @available(iOS 13.0, *)
    public convenience init?(
        sfSymbol: SFSymbolRepresentable,
        withConfiguration configuration: SymbolConfiguration? = nil
    ) {
        self.init(systemName: sfSymbol.systemName, withConfiguration: configuration)
    }
}

// MARK: - SFSymbolRepresentable
public protocol SFSymbolRepresentable {
    var systemName: String { get }
}

extension SFSymbolRepresentable where Self: RawRepresentable, RawValue == String {
    public var systemName: String { rawValue }
}
