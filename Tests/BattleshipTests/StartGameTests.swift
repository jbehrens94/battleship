import Nimble
import Quick
import XCTest

@testable import Battleship

final class StartGameTests: QuickSpec {
    override static func spec() {
        describe("starting a game") {
            var output: OutputCapture!
            var start: Commands.StartGame!

            context("when the game initializes") {
                beforeEach {
                    output = OutputCapture()
                    start = try XCTUnwrap(try Battleship.parseAsRoot(["start"]) as? Commands.StartGame)
                    start.output = output

                    try start.run()
                }

                it("writes a welcome message") {
                    expect(output.messages.last).to(equal("🕹️ Battleship game starting"))
                }
            }
        }
    }
}
