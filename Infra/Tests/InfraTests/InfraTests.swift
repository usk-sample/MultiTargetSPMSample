import XCTest
@testable import Api
@testable import Store

final class InfraTests: XCTestCase {
    func testApi() throws {
        let api = Api()
        let result = api.request()
        XCTAssertTrue(Array(0...100).contains(result))
    }
    func testDataStore() throws {
        let store = DataStore()
        
        XCTAssertTrue(store.visitNumber == 0)
        store.visitNumber = 1
        XCTAssertTrue(store.visitNumber == 1)
        
    }
}
