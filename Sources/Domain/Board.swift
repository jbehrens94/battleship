import Foundation

public struct Board {
    let size = Board.Size(width: 10, height: 10)
    private let grid: [[Cell]]

    public init() {
        self.grid = Array(
            repeating: Array(
                repeating: .init(),
                count: size.width
            ),
            count: size.height
        )
    }

    public func cell(at position: Position) -> Cell {
        grid[position.row][position.column]
    }

    public struct Size {
        let width: Int
        let height: Int
    }
}
