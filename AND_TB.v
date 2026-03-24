`timescale 1ns/1ps
module AND_TB ();

reg A;
reg B;
wire C;


AND   DUT(
    .A(A),
    .B(B),
    .C(C)
);

initial begin
    A = 0;    B = 0;   #10;
    A = 1;    B = 0;   #10;
    A = 0;    B = 1;   #10;
    A = 1;    B = 1;   #10;
end

initial begin
    $monitor ( "A = %b  B = %b  | C = %b", A , B, C);
end
    
endmodule
