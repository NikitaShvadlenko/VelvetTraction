import UIKit
import SnapKit
import SharedResources

final class MainScreenView: UIView {

    let welcomeView = WelcomeView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureViews()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
// MARK: - Public methods
extension MainScreenView {
    public func setupView(name: String, qoute: String) {
        welcomeView.configure(name: name, qoute: qoute)
    }
}

// MARK: - Private methods
extension MainScreenView {
    private func configureViews() {
        backgroundColor = Asset.Colors.mainScreenBackground.color
        addSubview(welcomeView)
        welcomeView.snp.makeConstraints { make in
            make.leading.trailing.top.equalTo(safeAreaLayoutGuide)
        }
    }
}
