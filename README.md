# Colors

[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)
[![Issues](https://img.shields.io/github/issues/paulot/Colors.svg
)](https://github.com/paulot/Colors/issues?state=open)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/paulot/Colors/blob/master/LICENSE)
[![Build](https://travis-ci.org/paulot/Colors.svg?branch=master)](https://travis-ci.org/paulot/Colors)
[![](http://img.shields.io/badge/unicorn-approved-ff69b4.svg)](https://www.youtube.com/watch?v=9auOCbH5Ns4)

> Terminal string styling for Swift

**Colors is a clean and focused solution for string styling in Swift.**
![](https://raw.githubusercontent.com/paulot/Colors/master/media/ANSIColors.png)

##Usage
``` swift
import Colors

print(Colors.blue("Blue string"))
print(Colors.Blue("Bright blue string"))
```

Addtionaly, you can compose modifiers:
```swift
print(Colors.blue(Colors.bgRed("Blue string with red background")))
```

Or define compositions for convenince:
```swift
infix operator >>> { associativity left }
func >>> <A, B, C>(f: B -> C, g: A -> B) -> A -> C {
  return { x in f(g(x)) }
}

var error = Colors.bold >>> Colors.red >>> Colors.underline
print(error("There was an error"))
```

## Styles
### Bright/Normal Text Colors
- `Black/black`
- `Red/red`
- `Green/green`
- `Yellow/yellow`
- `Blue/blue`
- `Magenta/magenta`
- `Cyan/cyan`
- `White/white`

### Bright/Normal Background Colors
- `BgBlack/bgBlack`
- `BgRed/bgRed`
- `BgGreen/bgGreen`
- `BgYellow/bgYellow`
- `BgBlue/bgBlue`
- `BgMagenta/bgMagenta`
- `BgCyan/bgCyan`
- `BgWhite/bgWhite`

### Text modifiers
- `blink`
- `bold`
- `dim`
- `italic`
- `underline`
- `inverse`
- `hidden`
- `strikethrough`

##API

### `Colors.<style>(text: String) -> String`
Applies the specified `<style>` to the given text. For a list of styles check the [styles](https://github.com/paulot/Colors/blob/master/README.md#styles) section above.

```swift
Colors.underline("Underlined text")
```

### `Colors.colorText(text: String, color: Int) -> String`
**Requires 8-bit color support from the console.**

Colors the letters of the given `text` with the specified `color`. `color` must be an integer from 0-255 representing an 8-bit color. For a list of 8-bit colors check [here](http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux).

Generally useful if you want to color the text with very specific colors.
```swift
for i in 0...255 {
    print(Colors.colorText("a", color: i), terminator: "")
}
```
Outputs:
![](https://raw.githubusercontent.com/paulot/Colors/master/media/Text.png)

### `Colors.colorBg(text: String, color: Int) -> String`
**Requires 8-bit color support from the console.**

Colors the background of the given `text` with the specified `color`. `color` must be an integer from 0-255 representing an 8-bit color. For a list of 8-bit colors check [here](http://bitmote.com/index.php?post/2012/11/19/Using-ANSI-Color-Codes-to-Colorize-Your-Bash-Prompt-on-Linux).

Generally useful if you want to color the background with very specific colors.
```swift
for i in 0...255 {
    print(Colors.colorBg(" ", color: i), terminator: "")
}
```
Outputs:
![](https://raw.githubusercontent.com/paulot/Colors/master/media/Backgrounds.png)

### `Colors.getTextColorer(color: Int) -> (String -> String)`
**Requires 8-bit color support from the console.**

Returns a colorer function that will color the characters of the input string with the specified color.

Useful for defining your own style compositions with 8-bit colors.

```swift
infix operator >>> { associativity left }
func >>> <A, B, C>(f: B -> C, g: A -> B) -> A -> C {
  return { x in f(g(x)) }
}

let warning = Colors.getTextColorer(23) >>> Colors.underline >>> Colors.BgRed
print(error("Some Warning"))
```

### `Colors.getBgColorer(color: Int) -> (String -> String)`
**Requires 8-bit color support from the console.**

Returns a colorer function that will color the background of the input string with the specified color.

Useful for defining your own style compositions with 8-bit colors.

```swift
infix operator >>> { associativity left }
func >>> <A, B, C>(f: B -> C, g: A -> B) -> A -> C {
  return { x in f(g(x)) }
}

let info = Colors.getBgColorer(23) >>> Colors.underline >>> Colors.Red
print(info("Some Warning"))
```

## License


MIT © [Paulo Tanaka](http://github.com/paulot)
