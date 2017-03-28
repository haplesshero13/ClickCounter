import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let model = Model(counter: 0)

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ClickerViewController(model)
        window?.makeKeyAndVisible()

        return true
    }
}
