import Application
import Domain
import Foundation

public struct TextualBoardPresenter: BoardPresenting {
    public init() {}
    public func present(board: Board) -> String {
        String(repeating: "🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊\n", count: 10)
    }
}
