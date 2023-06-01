import Foundation
import SharedModels

public class NameProvider {
    public init() {}

    public func provideName() -> WelcomeResponse {
        return WelcomeResponse(name: "Аркадий", qoute: "Я твою сиську царапал!")
    }
}
