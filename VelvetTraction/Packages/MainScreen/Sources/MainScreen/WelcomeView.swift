import UIKit
import SnapKit
import SharedResources

class WelcomeView: UIView {

    let font = UIFont.systemFont(ofSize: 30)
    let color: UIColor = .black

    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.font = font
        label.textColor = .systemGray
        label.textAlignment = .left
        return label
    }()

    private lazy var quoteOfDayLabel: UILabel = {
        let label = UILabel()
        label.font = font
        label.textColor = .systemGray
        label.textAlignment = .left
        return label
    }()

    private var welcomeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        return stackView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
// MARK: - Public Methods
extension WelcomeView {
    public func configure(name: String, qoute: String) {
        nameLabel.text = L10n.greeting(name)
        quoteOfDayLabel.text = qoute
    }
}

// MARK: - Private Method
extension WelcomeView {
    private func setupView() {
        addSubview(welcomeStackView)
        welcomeStackView.addArrangedSubview(nameLabel)
        welcomeStackView.addArrangedSubview(quoteOfDayLabel)

        welcomeStackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
