//
//  Colors.swift
//  Colors
//
//  Created by Paulo Tanaka on 12/12/15.
//  Copyright © 2015 Paulo Tanaka. All rights reserved.
//

func apply(style: [Int]) -> (String -> String) {
    return { str in return "\u{001B}[\(style[0])m\(str)\u{001B}[\(style[1])m" }
}

public class Colors {
    public static var black = apply(ANSITextColorCode.black)
    public static var red = apply(ANSITextColorCode.red)
    public static var green = apply(ANSITextColorCode.green)
    public static var yellow = apply(ANSITextColorCode.yellow)
    public static var blue = apply(ANSITextColorCode.blue)
    public static var magenta = apply(ANSITextColorCode.magenta)
    public static var cyan = apply(ANSITextColorCode.cyan)
    public static var white = apply(ANSITextColorCode.white)
    public static var gray = apply(ANSITextColorCode.gray)

    public static var bgBlack = apply(ANSIBgColorCode.black)
    public static var bgRed = apply(ANSIBgColorCode.red)
    public static var bgGreen = apply(ANSIBgColorCode.green)
    public static var bgYellow = apply(ANSIBgColorCode.yellow)
    public static var bgBlue = apply(ANSIBgColorCode.blue)
    public static var bgMagenta = apply(ANSIBgColorCode.magenta)
    public static var bgCyan = apply(ANSIBgColorCode.cyan)
    public static var bgWhite = apply(ANSIBgColorCode.white)

    public static var bold = apply(ANSIModifiers.bold)
    public static var dim = apply(ANSIModifiers.dim)
    public static var italic = apply(ANSIModifiers.italic)
    public static var underline = apply(ANSIModifiers.underline)
    public static var inverse = apply(ANSIModifiers.inverse)
    public static var hidden = apply(ANSIModifiers.hidden)
    public static var strikethrough = apply(ANSIModifiers.strikethrough)
}