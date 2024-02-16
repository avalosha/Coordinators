//
//  ExampleTests.swift
//  CoordinatorsTests
//
//  Created by Sferea-Lider on 16/02/24.
//

import XCTest
@testable import Coordinators

final class ExampleTests: XCTestCase {

    func testLoadingImages() {
        // Given
        let sut = ViewController()
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        XCTAssertEqual(sut.pictures.count, 10, "There should be ten images.")
    }
    
    func testTableExists() {
        // Given
        let sut = ViewController()
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        XCTAssertNotNil(sut.tableView)
    }

    func testTableViewHasCorrectRowCount() {
        // Given
        let sut = ViewController()
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        let rowCount = sut.tableView.numberOfRows(inSection: 0)
        XCTAssertEqual(rowCount, sut.pictures.count)
    }
    
    func testEachCellHasTheCorrectText() {
        // Given
        let sut = ViewController()
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        for (index, picture) in sut.pictures.enumerated() {
            let indexPath = IndexPath(row: index, section: 0)
            let cell = sut.tableView(sut.tableView, cellForRowAt: indexPath)
            XCTAssertEqual(cell.textLabel?.text, picture)
        }
    }
    
    func testCellsHaveDisclosureIndicators() {
        // Given
        let sut = ViewController()
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        for index in sut.pictures.indices {
            let indexPath = IndexPath(row: index, section: 0)
            let cell = sut.tableView(sut.tableView, cellForRowAt: indexPath)
            XCTAssertEqual(cell.accessoryType, .disclosureIndicator)
        }
    }
    
    func testViewControllerUsesLargeTitle() {
        // Given
        let sut = ViewController()
        _ = UINavigationController(rootViewController: sut)
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        XCTAssertTrue(sut.navigationController?.navigationBar.prefersLargeTitles ?? false)
    }
    
    func testNavigationBarHasStormViewerTitle() {
        // Given
        let sut = ViewController()
        
        // When
        sut.loadViewIfNeeded()
        
        // Then
        XCTAssertEqual(sut.title, "Main")
    }
}
