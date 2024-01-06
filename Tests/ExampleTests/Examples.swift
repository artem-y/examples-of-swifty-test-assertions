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

    // MARK: - Assert throwsError

    func test_removeElement_atIndexOutOfBounds_throwsIndexOutOfRangeError() {
        // Given
        var sut = [1, 2, 3, 4, 5, 6]

        Assert(
            try sut.removeElement(at: 8), // When
            throwsError: Array<Int>.Error.indexOutOfRange // Then
        )
    }

    // MARK: - AssertAsync throwsError

    func test_removeElementAfterDelay_atIndexOutOfBounds_throwsIndexOutOfRangeError() async {
        // Given
        var sut = [1, 2, 3, 4, 5, 6]

        await AssertAsync(
            try await sut.removeElement(at: 6, afterDelay: 100), // When
            throwsError: Array<Int>.Error.indexOutOfRange // Then
        )
    }
}
