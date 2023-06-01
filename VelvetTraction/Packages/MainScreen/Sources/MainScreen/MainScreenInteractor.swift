import Foundation
import Providers
import SharedModels

final class MainScreenInteractor {
    weak var presenter: MainScreenInteractorOutput?
    var nameProvider: NameProvider?
}

// MARK: - MainScreenInteractorInput
extension MainScreenInteractor: MainScreenInteractorInput {

    func fetchName() {
        guard let nameProvider = nameProvider else {
            fatalError("Name provider was not setup")
        }
        let welcomeData = nameProvider.provideName()
        presenter?.interactorDidFetchName(name: welcomeData.name, qoute: welcomeData.qoute)
    }
}

// MARK: - Private methods
extension MainScreenInteractor {
}
