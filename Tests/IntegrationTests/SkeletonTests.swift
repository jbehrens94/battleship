import Foundation
import Testing

struct SkeletonTests {
    @Test
    func `CLI produces any kind of output`() async throws {
        let output = try run(arguments: "start")

        #expect(!output.isEmpty)
    }
}

private extension SkeletonTests {
    func run(arguments: String...) throws -> String {
        let binary = productsDirectory.appendingPathComponent("Battleship")
        let process = Process()
        process.executableURL = binary
        process.arguments = arguments

        let outputPipe = Pipe()
        process.standardOutput = outputPipe

        try process.run()
        process.waitUntilExit()

        let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
        return String(data: outputData, encoding: .utf8) ?? ""
    }

    var productsDirectory: URL {
        let root = URL(filePath: #file)
            .deletingLastPathComponent()
            .deletingLastPathComponent()
            .deletingLastPathComponent()

        return root.appending(path: ".build/Debug")
    }
}
