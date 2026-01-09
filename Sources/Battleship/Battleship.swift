import Application
import ArgumentParser
import Domain
import Foundation
import Infrastructure

@main
struct Battleship: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "battleship",
        abstract: "A simple Battleship CLI game.",
        subcommands: [
            Start.self,
        ],
        defaultSubcommand: Start.self
    )

    func run() throws {}
}

struct Start: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "start",
        abstract: "Start a new game of Battleship."
    )

    func run() throws {
        let board = Board()
        let presenter = TextualBoardPresenter()

        print(presenter.present(board: board))
    }
}
