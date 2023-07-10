import XCTest
@testable import PasswordValidation

final class PasswordValidationTests: XCTestCase {

    func testValidPassword() {
        // Arrange
        let validation = PasswordValidation()
        let password = "123456"
        
        // Act
        let isValid = validation.isValid(password: password)
        
        // Assert
        XCTAssertTrue(isValid, "The password should be valid.")
    }
    
    func testInvalidPassword() {
        // Arrange
        let validation = PasswordValidation()
        let password = "12345" // Invalid password, only 5 digits
        
        // Act
        let isValid = validation.isValid(password: password)
        
        // Assert
        XCTAssertFalse(isValid, "The password should be invalid.")
    }

    func testInvalidPasswordWithLetters() {
        // Arrange
        let validation = PasswordValidation()
        let password = "12abc6" // Invalid password, it contains letters
        
        // Act
        let isValid = validation.isValid(password: password)
        
        // Assert
        XCTAssertFalse(isValid, "The password should be invalid.")
    }
}
