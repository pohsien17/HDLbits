module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//
    reg[7:0] intermediate_result1,intermediate_result2,intermediate_result3;
    // assign intermediate_result1 = compare? true: false;
    assign intermediate_result1 = (a>b)?b:a;
    assign intermediate_result2 = (intermediate_result1>c)?c:intermediate_result1;
    assign intermediate_result3 = (intermediate_result2>d)?d:intermediate_result2;
    assign min = intermediate_result3;
endmodule

