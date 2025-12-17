import Foundation

@testable import Battleship

final class OutputCapture: OutputHandling {
    var messages: [String] = []

    func write(_ string: String) {
        messages.append(string)
    }
}
