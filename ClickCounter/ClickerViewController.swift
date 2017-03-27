import UIKit

class ClickerViewController: UIViewController {
    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    var model: Model!

    // MARK: - Initializers

    init(_ model: Model) {
        super.init(nibName: "\(ClickerViewController.self)", bundle: nil)
        self.model = model
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle Methods

    override func viewWillAppear(_ animated: Bool) {
        self.incrementButton.accessibilityIdentifier = "incrementButton"

        modelDidUpdate()
    }

    // MARK: - Interface Actions

    @IBAction func incrementCounter(_ sender: Any) {
        model = Model.incrementCounter(model)

        modelDidUpdate()
    }

    // MARK: - Private

    private func modelDidUpdate() {
        counterLabel.text = "\(model.counter)"
    }
}
