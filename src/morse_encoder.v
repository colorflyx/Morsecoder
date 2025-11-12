module morse_encoder (
    input  [7:0] char_in,     // ASCII input character
    output reg [7:0] morse,   // Morse pattern (0=dot, 1=dash)
    output reg [2:0] length   // Number of symbols
);

    always @(*) begin
        case (char_in)
            "A","a": begin morse = 8'b01;      length = 2; end // .-
            "B": begin morse = 8'b1000;    length = 4; end // -...
            "C": begin morse = 8'b1010;    length = 4; end // -.-.
            "D": begin morse = 8'b100;     length = 3; end // -..
            "E": begin morse = 8'b0;       length = 1; end // .
            "F": begin morse = 8'b0010;    length = 4; end // ..-.
            "G": begin morse = 8'b110;     length = 3; end // --.
            "H": begin morse = 8'b0000;    length = 4; end // ....
            "I": begin morse = 8'b00;      length = 2; end // ..
            "J": begin morse = 8'b0111;    length = 4; end // .---
            "K": begin morse = 8'b101;     length = 3; end // -.-
            "L": begin morse = 8'b0100;    length = 4; end // .-..
            "M": begin morse = 8'b11;      length = 2; end // --
            "N": begin morse = 8'b10;      length = 2; end // -.
            "O": begin morse = 8'b111;     length = 3; end // ---
            "P": begin morse = 8'b0110;    length = 4; end // .--.
            "Q": begin morse = 8'b1101;    length = 4; end // --.-
            "R": begin morse = 8'b010;     length = 3; end // .-.
            "S": begin morse = 8'b000;     length = 3; end // ...
            "T": begin morse = 8'b1;       length = 1; end // -
            "U": begin morse = 8'b001;     length = 3; end // ..-
            "V": begin morse = 8'b0001;    length = 4; end // ...-
            "W": begin morse = 8'b011;     length = 3; end // .--
            "X": begin morse = 8'b1001;    length = 4; end // -..-
            "Y": begin morse = 8'b1011;    length = 4; end // -.--
            "Z": begin morse = 8'b1100;    length = 4; end // --..
            " ": begin morse = 8'b0; length = 0; end // space between words
            default: begin morse = 8'b0; length = 0; end
        endcase
    end
endmodule

