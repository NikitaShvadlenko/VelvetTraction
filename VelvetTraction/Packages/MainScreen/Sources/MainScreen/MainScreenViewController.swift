import UIKit
import SharedResources

final class MainScreenViewController: UIViewController {

    private let mainScreenView = MainScreenView()

    var presenter: MainScreenViewOutput?

    override func loadView() {
        view = mainScreenView
        print(L10n.appTitle)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad(self)
    }
}

// MARK: - MainScreenViewInput
extension MainScreenViewController: MainScreenViewInput {
    func configureViews() {
    }
}

// MARK: - Private methods
extension MainScreenViewController {
}
