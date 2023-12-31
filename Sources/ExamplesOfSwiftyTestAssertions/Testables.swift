// Simple code samples that can be used in tests for demonstrations.

import Foundation

extension [String] {
    /// Returns only non-empty strings
    func nonEmptyStrings() -> [String] {
        filter { !$0.isEmpty }
    }
}

extension Array {
    enum Error: Swift.Error, Equatable {
        case indexOutOfRange
    }

    /// Safely removes an element from the array.
    /// - parameter index: Index of element to remove.
    /// - returns: Removed element.
    /// - throws: Index out of range error, when given index is out of bounds of the array.
    mutating func removeElement(at index: Index) throws -> Element {
        guard indices.contains(index) else { throw Error.indexOutOfRange }
        return remove(at: index)
    }

    /// Async version of `removeElement`, safely removes an element from the array after delay.
    /// - parameter index: Index of element to remove.
    /// - parameter nanoseconds: Delay in nanoseconds to wait before removal.
    /// - returns: Removed element.
    /// - throws: Index out of range error, when given index is out of bounds of the array.
    mutating func removeElement(at index: Int, afterDelay nanoseconds: UInt64 = 0) async throws -> Element {
        try await Task.sleep(nanoseconds: nanoseconds)
        guard indices.contains(index) else { throw Error.indexOutOfRange }
        return remove(at: index)
    }
}
