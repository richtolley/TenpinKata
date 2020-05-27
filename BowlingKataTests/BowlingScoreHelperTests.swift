//
//  BowlingScoreHelperTests.swift
//  BowlingKataTests
//
//  Created by Richard Tolley on 08/05/2020.
//  Copyright © 2020 Novoda. All rights reserved.
//

import XCTest
@testable import BowlingKata

class BowlingScoreHelperTests: XCTestCase {

  var helper: BowlingScoreHelper!

  override func setUpWithError() throws {
    self.helper = BowlingScoreHelper()
  }

  func testScoreLessThanTenIsNotAStrike() {
    XCTAssertFalse(self.helper.isStrike(balls: [0,3]))
  }

  func testScoreLessThanTenIsNotASpare() {
    XCTAssertFalse(self.helper.isSpare(balls: [0,3]))
  }

  func testScoreTenWithOneBallIsAStrike() {
    XCTAssertTrue(self.helper.isStrike(balls: [10]))
  }

  func testScoreTenWithTwoBallsIsNotAStrike() {
    XCTAssertFalse(self.helper.isStrike(balls: [3,7]))
  }

  func testScoreTenWithOneBallIsNotASpare() {
    XCTAssertFalse(self.helper.isSpare(balls: [10]))
  }

  func testScoreTenWithTwoIsASpare() {
    XCTAssertTrue(self.helper.isSpare(balls: [7,3]))
  }

  func testScore10With3IsASpare() {
    XCTAssertTrue(self.helper.isSpare(balls: [3,4,3]))
  }

}
