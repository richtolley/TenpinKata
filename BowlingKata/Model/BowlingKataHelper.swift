//
//  BowlingKataHelper.swift
//  BowlingKata
//
//  Created by Richard Tolley on 08/05/2020.
//  Copyright © 2020 Novoda. All rights reserved.
//

import Foundation

struct BowlingScoreHelper {
  //A spare is when the player knocks down all ten pins with two throws
  //The score is 10 + the score of the next throw
  func isSpare(balls: [Int]) -> Bool {
    balls.count > 1 && allPinsWereKnockedDown(balls: balls)
  }

  //A strick is when the player knocks down all ten pins with one throw
  //The score is 10 + the score of the next two throws
  func isStrike(balls: [Int]) -> Bool {
    balls.count == 1 && allPinsWereKnockedDown(balls: balls)
  }

  private func allPinsWereKnockedDown(balls: [Int]) -> Bool {
    balls.reduce(0,+) == 10
  }
}
