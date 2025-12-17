import Nimble
import Quick
import XCTest

@testable import Battleship

final class ExitGameTests: QuickSpec {
    override static func spec() {
        describe("ending a game") {
            var output: OutputCapture!
            var start: Commands.ExitGame!

            context("when the game initializes") {
                beforeEach {
                    output = OutputCapture()
                    start = try XCTUnwrap(try Battleship.parseAsRoot(["exit"]) as? Commands.ExitGame)
                    start.output = output

                    try start.run()
                }

                it("writes a welcome message") {
                    expect(output.messages.last).to(equal("🕹️ Battleship game ending. Goodbye!"))
                }
            }
        }
    }
}
