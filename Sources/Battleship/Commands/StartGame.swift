import ArgumentParser
import Foundation

extension Commands {
    struct StartGame: ParsableCommand {
        static let configuration = CommandConfiguration(
            commandName: "start",
            abstract: "Start a new game.",
        )

        enum CodingKeys: CodingKey {}

        var output: OutputHandling = ConsoleOutput()

        func run() throws {
            output.write("🕹️ Battleship game starting")
        }
    }
}
