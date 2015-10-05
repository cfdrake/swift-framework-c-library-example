# Swift Progress Bar Framework
[Bridging Headers](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html) are the recommended way of including C, C++, and Objective-C code in your Swift projects. However, the compiler does not allow you do this for Frameworks targets, which is a problem if you wish to create a Framework that wraps a C library.

This repository is an example of how to create a Swift framework that is able to call out to a C library without using Bridging Headers.

## Framework
The `Progressbar` framework is exported by this project. It includes one class: `Progressbar`.

The `Progressbar` class has one initializer that takes two required parameters: `text` and `max`, the text to display and the maximum value of the progress bar.

Each `Progressbar` instance responds to two methods: `increment` and `finish`. `increment` bumps up (and animates) the progress bar by one unit. `finish` completes the bar and finishes drawing.

## Example
The Xcode project contains an Xcode Playground demonstrating usage of the module. You should see a progress bar animating over the course of 30 seconds once you open this file. If you don't see it, press **⌘-Shift-Y** to ensure that the Console window is showing.

## Setup
<TODO>

## Dependencies/Thanks
[progressbar](https://github.com/doches/progressbar) is the C library that is wrapped in this example project. The source is included with this git repository. Thanks to the [original author](https://github.com/doches) for providing a simple library to wrap!
