import Foundation

final class MainScreenPresenter {
    weak var view: MainScreenViewInput?
    weak var moduleOutput: MainScreenModuleOutput?
    var interactor: MainScreenInteractorInput?
    var router: MainScreenRouterInput?
}

// MARK: - MainScreenViewOutput
extension MainScreenPresenter: MainScreenViewOutput {
    func viewDidLoad(_ view: MainScreenViewInput) {
        view.configureViews()
        interactor?.fetchName()
    }
}

// MARK: - MainScreenInteractorOutput
extension MainScreenPresenter: MainScreenInteractorOutput {
    func interactorDidFetchName(name: String, qoute: String) {
        view?.setupWelcomeView(name: name, qoute: qoute)
    }
}

// MARK: - MainScreenRouterOutput
extension MainScreenPresenter: MainScreenRouterOutput {
}

// MARK: - MainScreenModuleInput
extension MainScreenPresenter: MainScreenModuleInput {
    func configureModule(output: MainScreenModuleOutput?) {
        self.moduleOutput = output
    }
}

// MARK: - Private methods
extension MainScreenPresenter {
}
