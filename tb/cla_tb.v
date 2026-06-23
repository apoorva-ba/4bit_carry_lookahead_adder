module cla_4bit_tb;

    reg  [3:0] A;
    reg  [3:0] B;
    reg        Cin;

    wire [3:0] Sum;
    wire       Cout;

    cla_4bit uut (
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );

    initial begin
        $display("A\tB\tCin\tSum\tCout");

        A = 4'b0000; B = 4'b0000; Cin = 0; #10;
        A = 4'b0011; B = 4'b0101; Cin = 0; #10;
        A = 4'b0111; B = 4'b1000; Cin = 0; #10;
        A = 4'b1111; B = 4'b1111; Cin = 0; #10;
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;

        $finish;
    end

    initial begin
        $monitor("%b\t%b\t%b\t%b\t%b",
                  A, B, Cin, Sum, Cout);
    end

endmodule