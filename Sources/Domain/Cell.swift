import Foundation

public struct Cell {
    public let state: Cell.State

    public init(state: Cell.State = .water) {
        self.state = state
    }

    public enum State {
        case water

        public var emoji: String {
            switch self {
            case .water: "🌊"
            }
        }
    }
}
