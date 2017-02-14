import Foundation

// Define an extension to UInt8 type so that we can easily get binary represetnation as a String
extension UInt8 {
    public func binary() -> String {
        
        // Get the binary representation
        let short = String(self,radix:2)
        
        // Pad out to eight spaces
        let padded = String(repeating: "0", count: 8 - short.characters.count) + short
        
        // Return the padded binary representation
        return padded
    }
}

// Assign each type of body in the world a bit
let none     :   UInt8 = 0b0000
let block    :   UInt8 = 0b0001  // 1
let ball     :   UInt8 = 0b0010  // 2
let edge     :   UInt8 = 0b0100  // 4

// What is the value, in decimal (base 10) and then binary (base 2)?
none
none.binary()

// What is the value, in decimal (base 10) and then binary (base 2)?
block
block.binary()

// What is the value, in decimal (base 10) and then binary (base 2)?
ball
ball.binary()

// What is the value, in decimal (base 10) and then binary (base 2)?
edge
edge.binary()

// Logical OR
let bitMaskOR = block | ball
bitMaskOR.binary()

// Logical AND
let bitMaskAND = block & ball
bitMaskAND.binary()

// Logical NOT
let bitMaskNOT = ~block
bitMaskNOT.binary()

// Shift bit to the left
block
block.binary()
let bitShiftLeft = block << 1
bitShiftLeft.binary()

// Shift bit to the right
let bitShiftRight = bitShiftLeft >> 1
bitShiftRight.binary()
