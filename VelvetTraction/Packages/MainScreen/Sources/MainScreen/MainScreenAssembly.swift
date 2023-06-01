import UIKit
import Utils
import Providers

public enum MainScreenAssembly {
    public static func assemble() -> AssembledModule<MainScreenModuleInput> {
        let viewController = MainScreenViewController()
        let presenter = MainScreenPresenter()
        let interactor = MainScreenInteractor()
        let router = MainScreenRouter()
        let nameProvider = NameProvider()

        viewController.presenter = presenter

        presenter.view = viewController
        presenter.interactor = interactor
        presenter.router = router

        interactor.presenter = presenter
        interactor.nameProvider = nameProvider

        router.viewController = viewController
        router.presenter = presenter

        return AssembledModule(
            viewController: viewController,
            moduleInput: presenter
        )
    }
}
