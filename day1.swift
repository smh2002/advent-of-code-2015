import Foundation
import SwiftUI

// Determine the file name
let filename = "/Users/setonhawkins/dev/advent-of-code-2015/day-1-input.txt"

// Read the contents of the specified file
let contents = try! String(contentsOfFile: filename)

// Print out file contents
// print(contents)

//Variable Count?
var part1Count = 0

for character in contents {
  //print(character)
  if character == "(" {
    part1Count = part1Count + 1
  }
  if character == ")" {
    part1Count = part1Count - 1
  }
}

print(part1Count)

//Variable Count?
var Floor = 0
var Part2Count = 0

for character in contents {
  if Floor < 0 {
    break
  }

  Part2Count += 1
  if character == "(" {
    Floor += 1
  }
  if character == ")" {
    Floor -= 1
  }
}

print(Part2Count)
