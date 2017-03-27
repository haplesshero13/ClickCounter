import Quick
import Nimble
@testable import ClickCounter

class ModelSpec: QuickSpec {
    override func spec() {
        var subject: Model!

        describe("AppDelegate") {
            beforeEach {
                subject = Model(counter: 0)
            }

            describe("increment counter") {
                it("increments the counter") {
                    let model = Model.incrementCounter(subject)

                    expect(model.counter).to(equal(1))
                }
            }
        }
    }
}
