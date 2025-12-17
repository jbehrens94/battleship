import Foundation

struct ConsoleOutput: OutputHandling {
    func write(_ message: String) {
        print(message)
    }
}
