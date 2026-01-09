import Testing

@testable import Application
@testable import Battleship
@testable import Domain
@testable import Infrastructure

struct StartGameTests {
    @Test
    func `given I start a new game, rows and columns are initialized correctly`() {
        let board = Board()
        let presenter = TextualBoardPresenter()

        let actual = presenter
            .present(board: board)

        let expected = """
          1️⃣ 2️⃣ 3️⃣ 4️⃣ 5️⃣ 6️⃣ 7️⃣ 8️⃣ 9️⃣ 🔟
        A 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        B 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        C 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        D 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        E 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        F 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        G 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        H 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        I 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        J 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊 🌊
        """

        #expect(actual == expected)
    }
}
