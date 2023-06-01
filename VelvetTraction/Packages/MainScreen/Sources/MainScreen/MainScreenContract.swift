import SharedModels
// sourcery: AutoMockable
protocol MainScreenViewInput: AnyObject {
    func configureViews()
    func setupWelcomeView(name: String, qoute: String)
}

protocol MainScreenViewOutput {
    func viewDidLoad(_ view: MainScreenViewInput)
}

// sourcery: AutoMockable
protocol MainScreenInteractorInput {
    func fetchName()
}

// sourcery: AutoMockable
protocol MainScreenInteractorOutput: AnyObject {
    func interactorDidFetchName(name: String, qoute: String)
}

// sourcery: AutoMockable
protocol MainScreenRouterInput {
}

protocol MainScreenRouterOutput: AnyObject {
}

public protocol MainScreenModuleInput: AnyObject {
	func configureModule(output: MainScreenModuleOutput?)
}

// sourcery: AutoMockable
public protocol MainScreenModuleOutput: AnyObject {
}
