module cla_tb;

    reg [15:0] a,b;
    wire [15:0] s;
    wire cout;
    reg cin =0;

    cla_v4 x1(a, b, cin, cout, s); //PUT YOUR MODULE HERE

    initial
        begin
        $dumpfile("test.vcd");
	    $dumpvars;
        $monitor($time,"%d + %d = %d  (+8*%d)",a,b,s,cout);
        a = 1561;
        b = 1456;

        #100 $finish;
        end
endmodule