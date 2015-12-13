# Colors
> Terminal string styling for Swift
[![](http://img.shields.io/badge/unicorn-approved-ff69b4.svg)](https://www.youtube.com/watch?v=9auOCbH5Ns4)

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
import Colors

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

##API
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

