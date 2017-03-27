import Quick
import Nimble
@testable import ClickCounter

class AppDelegateSpec: QuickSpec {
    override func spec() {
        var subject: AppDelegate!

        describe("AppDelegate") {
            beforeEach {
                subject = AppDelegate()
            }

            it("launches with the initial root view controller in the key window") {
                expect(subject.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)).to(beTrue())
                expect(subject.window?.isKeyWindow).to(beTrue())
                expect(subject.window?.rootViewController).to(beAnInstanceOf(ClickerViewController.self))
            }
        }
    }
}
