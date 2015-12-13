//
//  Colors.swift
//  Colors
//
//  Created by Paulo Tanaka on 12/12/15.
//  Copyright © 2015 Paulo Tanaka. All rights reserved.
//

func apply<T>(style: [T]) -> (String -> String) {
    return { str in return "\u{001B}[\(style[0])m\(str)\u{001B}[\(style[1])m" }
}

func getColor(color: [Int], mod: Int) -> [Int] {
    let terminator = mod == 30 || mod == 90 ? 30 : 40
    return [ color[0] + mod, color[1] + terminator ]
}

public class Colors {
    static let normalText = 30
    static let bg = 40
    static let brightText = 90
    static let brightBg = 100

    // MARK: 8-bit color functions
    public static func getTextColorer(color: Int) -> (String -> String) {
        return apply(["38;5;\(color)", String(normalText + 9)])
    }

    public static func colorText(text: String, color: Int) -> String {
        return Colors.getTextColorer(color)(text)
    }

    public static func getBgColorer(color: Int) -> (String -> String) {
        return apply(["48;5;\(color)", String(bg + 9)])
    }

    public static func colorBg(text: String, color: Int) -> String {
        return Colors.getBgColorer(color)(text)
    }

    // MARK: Normal text colors
    public static var black = apply(getColor(ANSIColorCode.black, mod: normalText))
    public static var red = apply(getColor(ANSIColorCode.red, mod: normalText))
    public static var green = apply(getColor(ANSIColorCode.green, mod: normalText))
    public static var yellow = apply(getColor(ANSIColorCode.yellow, mod: normalText))
    public static var blue = apply(getColor(ANSIColorCode.blue, mod: normalText))
    public static var magenta = apply(getColor(ANSIColorCode.magenta, mod: normalText))
    public static var cyan = apply(getColor(ANSIColorCode.cyan, mod: normalText))
    public static var white = apply(getColor(ANSIColorCode.white, mod: normalText))

    // MARK: Bright text colors
    public static var Black = apply(getColor(ANSIColorCode.black, mod: brightText))
    public static var Red = apply(getColor(ANSIColorCode.red, mod: brightText))
    public static var Green = apply(getColor(ANSIColorCode.green, mod: brightText))
    public static var Yellow = apply(getColor(ANSIColorCode.yellow, mod: brightText))
    public static var Blue = apply(getColor(ANSIColorCode.blue, mod: brightText))
    public static var Magenta = apply(getColor(ANSIColorCode.magenta, mod: brightText))
    public static var Cyan = apply(getColor(ANSIColorCode.cyan, mod: brightText))
    public static var White = apply(getColor(ANSIColorCode.white, mod: brightText))

    // MARK: Normal background colors
    public static var bgBlack = apply(getColor(ANSIColorCode.black, mod: bg))
    public static var bgRed = apply(getColor(ANSIColorCode.red, mod: bg))
    public static var bgGreen = apply(getColor(ANSIColorCode.green, mod: bg))
    public static var bgYellow = apply(getColor(ANSIColorCode.yellow, mod: bg))
    public static var bgBlue = apply(getColor(ANSIColorCode.blue, mod: bg))
    public static var bgMagenta = apply(getColor(ANSIColorCode.magenta, mod: bg))
    public static var bgCyan = apply(getColor(ANSIColorCode.cyan, mod: bg))
    public static var bgWhite = apply(getColor(ANSIColorCode.white, mod: bg))

    // MARK: Bright background colors
    public static var BgBlack = apply(getColor(ANSIColorCode.black, mod: brightBg))
    public static var BgRed = apply(getColor(ANSIColorCode.red, mod: brightBg))
    public static var BgGreen = apply(getColor(ANSIColorCode.green, mod: brightBg))
    public static var BgYellow = apply(getColor(ANSIColorCode.yellow, mod: brightBg))
    public static var BgBlue = apply(getColor(ANSIColorCode.blue, mod: brightBg))
    public static var BgMagenta = apply(getColor(ANSIColorCode.magenta, mod: brightBg))
    public static var BgCyan = apply(getColor(ANSIColorCode.cyan, mod: brightBg))
    public static var BgWhite = apply(getColor(ANSIColorCode.white, mod: brightBg))

    // MARK: Text modifiers
    public static var bold = apply(ANSIModifiers.bold)
    public static var blink = apply(ANSIModifiers.blink)
    public static var dim = apply(ANSIModifiers.dim)
    public static var italic = apply(ANSIModifiers.italic)
    public static var underline = apply(ANSIModifiers.underline)
    public static var inverse = apply(ANSIModifiers.inverse)
    public static var hidden = apply(ANSIModifiers.hidden)
    public static var strikethrough = apply(ANSIModifiers.strikethrough)
}