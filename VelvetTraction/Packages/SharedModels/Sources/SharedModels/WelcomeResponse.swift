import Foundation

public struct WelcomeResponse {
    public let name: String
    public let qoute: String

    public init(name: String, qoute: String) {
        self.name = name
        self.qoute = qoute
    }
}
