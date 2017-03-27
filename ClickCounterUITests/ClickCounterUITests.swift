import XCTest
import Nimble

class ClickCounterUITests: XCTestCase {
    lazy var app = XCUIApplication()
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    func testIncrementCounter() {
        expect(self.app.staticTexts["0"].exists).to(beTrue())

        app.buttons["incrementButton"].tap()

        expect(self.app.staticTexts["1"].exists).to(beTrue())
    }
}
