import Application
import Domain
import Foundation

public struct TextualBoardPresenter: BoardPresenting {
    private let labels: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]

    public init() {}

    public func present(board: Board) -> String {
        labels
            .map { $0 + " " + String(repeating: "🌊 ", count: 10) }
            .joined(separator: "\n")
    }
}
