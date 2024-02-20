//
//  DetailExampleTests.swift
//  CoordinatorsTests
//
//  Created by Sferea-Lider on 16/02/24.
//

import XCTest
@testable import Coordinators

final class DetailExampleTests: XCTestCase {
    
    func testSelectingImageShowsDetailImage() {
        // Given
        let sut = ViewController()
        let testIndexPath = IndexPath(row: 0, section: 0)
        let filenameToTest = "kof"
        let imageToLoad = UIImage(named: filenameToTest)
        
        // When
        sut.pictureSelectAction = {
            let detail = DetailViewController()
            detail.selectedImage = $0
            detail.loadViewIfNeeded()
            XCTAssertEqual(detail.detailImg.image, imageToLoad)
        }
        
        sut.tableView(sut.tableView, didSelectRowAt: testIndexPath)
    }
}
