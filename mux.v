//1
module ckt(a,b,c,y);
input a,b,c;
output y;
wire i,j;

assign i=b&a;
assign j=a&~c;
assign y=i|j;

endmodule

//2
module ckt(a,b,c,y);
input a,b,c;
output y;

assign y=(b&a)|(a&~c);

endmodule


//3
module ckt(a,b,c,y);
input a,b,c;
output y;

assign y=c?b:a;

endmodule

//4
module ckt(a,b,c,y);
input a,b,c;
output y;

always @(*)begin
	if(c==0) y=a;
	else y=b;
end

endmodule


//5
module ckt(a,b,c,y);
input a,b,c;
output y;

always @(*)begin
	case(c):begin
		1'b0: y=a;
		1'b1: y=b;
	endcase
end
endmodule

