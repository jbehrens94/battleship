import Application
import Domain
import Foundation

public struct TextualBoardPresenter: BoardPresenting {
    private let columns: [String] = ["1️⃣", "2️⃣", "3️⃣", "4️⃣", "5️⃣", "6️⃣", "7️⃣", "8️⃣", "9️⃣", "🔟"]
    private let rows: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]

    public init() {}

    public func present(board: Board) -> String {
        let row = (1...10).map { _ in "🌊" }.joined(separator: " ")
        let rows = rows
            .map { $0 + " " + row }
            .joined(separator: "\n")

        let columns = "  " + columns.joined(separator: " ")

        return "\(columns)\n\(rows)"
    }
}
