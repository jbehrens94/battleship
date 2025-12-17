import ArgumentParser

extension Commands {
    struct ExitGame: ParsableCommand {
        static let configuration = CommandConfiguration(
            commandName: "exit",
            abstract: "Exit a new game.",
        )

        var output: OutputHandling = ConsoleOutput()

        func run() throws {
            output.write("🕹️ Battleship game ending. Goodbye!")
        }
    }
}

extension Commands.ExitGame {
    enum CodingKeys: CodingKey {}
}
