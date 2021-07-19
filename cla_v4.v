module cla_v4(a, b, cin, cout, s);
    input [15:0] a,b;
    input cin;
    output cout;
    output [15:0] s;

    wire [15:0] g, p;
    wire [16:0] c;
    genvar i;

    generate 
        assign c[0] = cin;

        for (i=0; i<16; i= i+1)
        begin
          assign g[i] = a[i] & b[i];
          assign p[i] = a[i] | b[i];
          assign c[i+1] = g[i] | p[i] & c[i];
        end

        assign cout = c[16];

        for (i=0; i<16; i= i+1)
        begin
          assign s[i] = a[i] ^ b[i] ^ c[i];
        end
    endgenerate
endmodule