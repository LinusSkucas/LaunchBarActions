#!/usr/bin/env swift

/// compiled with `swiftc -o vaportext -avoid-emit-module-source-info -Ounchecked -O -remove-runtime-asserts default.swift`


import Foundation

// Note: The first argument is the script's path, ignore it:
let arguments = Array(CommandLine.arguments.dropFirst())
var text = arguments.first!

print(String(text.enumerated().map { [" ", $1] }.joined()))