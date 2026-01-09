import Domain
import Foundation

public protocol BoardPresenting {
    func present(board: Board) -> String
}
