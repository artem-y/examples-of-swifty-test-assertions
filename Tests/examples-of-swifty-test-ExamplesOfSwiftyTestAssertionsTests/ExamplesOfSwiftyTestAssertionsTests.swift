import XCTest
@testable import ExamplesOfSwiftyTestAssertions
import SwiftyTestAssertions

final class Examples: XCTestCase {

    // MARK: - AssertEmpty

    func test_nonEmptyStrings_fromArrayWithEmptyStrings_returnsEmptyArray() {
        // Given
        let sut = ["", "", ""]

        // When
        let result = sut.nonEmptyStrings()

        // Then
        AssertEmpty(result)
    }
}
