import UIKit
import SharedResources

final class MainScreenViewController: UIViewController {

    private let mainScreenView = MainScreenView()

    var presenter: MainScreenViewOutput?

    override func loadView() {
        view = mainScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad(self)
    }
}

// MARK: - MainScreenViewInput
extension MainScreenViewController: MainScreenViewInput {
    func setupWelcomeView(name: String, qoute: String) {
        mainScreenView.setupView(name: name, qoute: qoute)
    }

    func configureViews() {
    }
}

// MARK: - Private methods
extension MainScreenViewController {
}
