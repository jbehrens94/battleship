import Testing

@testable import Application
@testable import Battleship
@testable import Domain
@testable import Infrastructure

struct StartGameTests {
    @Test
    func `Given I start a new game, rows are initialized with the correct emoji`() {
        let board = Board()
        let presenter = TextualBoardPresenter()

        let actual = presenter
            .present(board: board)
            .split(separator: "\n")
            .map(String.init)

        let expected = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J"]
            .map { "\($0) \(String(repeating: "🌊 ", count: 10))" }

        #expect(actual == expected)
    }
}
