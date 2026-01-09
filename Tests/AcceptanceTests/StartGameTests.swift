import Testing

@testable import Application
@testable import Battleship
@testable import Domain
@testable import Infrastructure

struct StartGameTests {
    @Test
    func `Given I start a new game I should see 100 wave emoji`() {
        let board = Board()
        let presenter = TextualBoardPresenter()

        let actual = presenter.present(board: board)
        let expected = String(repeating: "🌊🌊🌊🌊🌊🌊🌊🌊🌊🌊\n", count: 10)

        #expect(actual == expected)
    }
}
