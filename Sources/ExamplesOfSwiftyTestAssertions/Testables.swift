import Foundation

extension [String] {
    /// Returns only non-empty strings
    func nonEmptyStrings() -> [String] {
        filter { !$0.isEmpty }
    }
}
