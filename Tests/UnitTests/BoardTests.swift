import Testing

@testable import Domain

struct BoardTests {
    @Test
    func `given a new board, the size is 10x10`() {
        let board = Board()

        #expect(board.size.width == 10)
        #expect(board.size.height == 10)
    }

    @Test
    func `given a new board, all cells are initially empty`() {
        let board = Board()

        for row in 0..<10 {
            for column in 0..<10 {
                let cell = board.cell(at: Position(row: row, column: column))

                #expect(cell.state == .water)
            }
        }
    }
}
