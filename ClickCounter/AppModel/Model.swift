import Foundation

struct Model {
    typealias Counter = Int
    var counter: Counter

    static func incrementCounter(_ model: Model) -> Model {
        return Model(counter: model.counter + 1)
    }
}
