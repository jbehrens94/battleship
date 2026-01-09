import Application
import Domain
import Foundation

public struct TextualBoardPresenter: BoardPresenting {
    public init() {}

    public func present(board: Board) -> String {
        let rows = rows(for: board)
        let columns = columns()

        return "\(columns)\n\(rows)"
    }

    private func rows(for board: Board) -> String {
        let rows: [String] = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]

        return rows
            .enumerated()
            .map { index, label in
                row(for: board, with: index, and: label)
            }
            .joined(separator: "\n")
    }

    private func row(for board: Board, with rowIndex: Int, and label: String) -> String {
        let range = 0..<board.size.width
        let cells = range
            .map { columnIndex in board.cell(at: Position(row: rowIndex, column: columnIndex)) }
            .map(\.state.emoji)
            .joined(separator: " ")

        return "\(label) \(cells)"
    }

    private func columns() -> String {
        let columns: [String] = ["1️⃣", "2️⃣", "3️⃣", "4️⃣", "5️⃣", "6️⃣", "7️⃣", "8️⃣", "9️⃣", "🔟"]

        return "  " + columns.joined(separator: " ")
    }
}
