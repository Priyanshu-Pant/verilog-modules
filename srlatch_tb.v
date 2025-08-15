module latchtest;
reg s,r;
wire q,qbar;
srlatch LAT(r,s,q,qbar);
initial 
begin
    $dumpfile("latchtest.vcd");    
    $dumpvars(0, latchtest);  
$monitor($time, "s=%b r=%b q=%b qbar=%b",s,r,q,qbar);
s=1'b0; r=1'b1;
#10 s=1'b1; r=1'b1;    
#10 s=1'b1; r=1'b1;
#10 s=1'b0; r=1'b1;
#10 s=1'b1; r=1'b0;
end
endmodule