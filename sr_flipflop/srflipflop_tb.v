module srflipflop_tb;
    
    reg clk;
    reg s;
    reg r;
    wire q;
    wire q_bar;

    srflipflop dut (
        .clk(clk),
        .s(s),
        .r(r),
        .q(q),
        .q_bar(q_bar)
    );

    initial begin
        clk = 0;
        forever #25 clk = ~clk;
    end

   
    initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, srflipflop_tb);
        s = 0;
        r = 0;
        
       
        #50; 
        
        s = 0; r = 1;
        #50;
        
       
        s = 1; r = 0;
        #50;
        
   
        s = 1; r = 1;
        #50;
        
  
        s = 0; r = 0;
        #50;
   
        $finish;
    end

  
    initial begin
        $monitor("Time=%0t | S=%b R=%b | Q=%b Q_bar=%b", $time, s, r, q, q_bar);
    end
endmodule   