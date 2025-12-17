import ArgumentParser
import Foundation

@main
struct Battleship: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "battleship",
        abstract: "A simple Battleship CLI game.",
        subcommands: [
            Commands.StartGame.self,
            Commands.ExitGame.self
        ],
        defaultSubcommand: Commands.StartGame.self
    )

    func run() throws {}
}
