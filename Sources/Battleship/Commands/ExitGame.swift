import ArgumentParser

extension Commands {
    struct ExitGame: ParsableCommand {
        static let configuration = CommandConfiguration(
            commandName: "exit",
            abstract: "Exit a new game.",
        )

        func run() throws {
            print("End!")
        }
    }
}
