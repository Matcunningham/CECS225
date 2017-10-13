module decoder4to16_tb();
  
  // Input
  bit [3:0] tb_data_in;
  
  // Output
  wire [15:0] tb_data_out;
  
  decoder4to16 decoder4to16_0(.data_in(tb_data_in),
                              .data_out(tb_data_out)
  							 );
  
  // Dump waveform
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(5);
  end    
  
  // Stimulus code
  initial begin
    
    tb_data_in = 4'b1111;
    #10ns;
    
    tb_data_in = 4'b1110;
    #10ns;

    tb_data_in = 4'b1101;
    #10ns;
    
    tb_data_in = 4'b1100;
    #10ns;
    
    tb_data_in = 4'b1011;
    #10ns;
    
    tb_data_in = 4'b1010;
    #10ns;

    tb_data_in = 4'b1001;
    #10ns;
    
    tb_data_in = 4'b1000;
    #10ns;    
    
    tb_data_in = 4'b0111;
    #10ns;
    
    tb_data_in = 4'b0110;
    #10ns;

    tb_data_in = 4'b0101;
    #10ns;
    
    tb_data_in = 4'b0100;
    #10ns;
    
    tb_data_in = 4'b0011;
    #10ns;
    
    tb_data_in = 4'b0010;
    #10ns;

    tb_data_in = 4'b0001;
    #10ns;
    
    tb_data_in = 4'b0000;
    #10ns;      
    $stop();
    
  end
  
  
endmodule