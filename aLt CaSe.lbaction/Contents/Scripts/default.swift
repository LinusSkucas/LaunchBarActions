#!/usr/bin/env swift

/// compiled with `swiftc -o altText -avoid-emit-module-source-info -Ounchecked -O -remove-runtime-asserts default.swift`

// LaunchBar Action Script
// Tested against Swift 3

import Foundation

// Note: The first argument is the script's path, ignore it:
let arguments = Array(CommandLine.arguments.dropFirst())
var text = arguments.first!.lowercased()

var shouldUppercase = Bool.random()

for (index, character) in text.enumerated() {
    let indexRange = text.index(text.startIndex, offsetBy: index)
    if shouldUppercase {
        text.replaceSubrange(indexRange...indexRange, with: character.uppercased())
    }
    shouldUppercase.toggle()
}
print(text)
