//
//  Date_Comparable.swift
//  ViaSwiftUtils
//
//  Copyright 2017 Viacom, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

@testable import ViaSwiftUtils
import XCTest

class DateComparableTest: XCTestCase {
    
    func testComparable() {
        // Given, When
        let earlyDate = Date(timeIntervalSince1970: 0)
        let laterDate = Date(timeIntervalSince1970: 1000)
        let otherDate = Date(timeIntervalSince1970: 1000)
        
        // Then
        XCTAssertTrue(earlyDate < laterDate, "Expected earlyDate to be before laterDate")
        XCTAssertTrue(laterDate > earlyDate, "Expected earlyDate to be before laterDate")
        XCTAssertTrue(otherDate == laterDate, "Expected otherDate to be equal laterDate")
    }
}
