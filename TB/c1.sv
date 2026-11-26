# code 1
...
module test;

  class transaction;
        bit[31:0] src,dst;

        function new(int src=5,int dst=3);
                this.src=src;
                this.dst=dst;
        endfunction:new

  endclass: transaction

transaction trans_h;
initial
        begin
                trans_h=new(5);
                $display("%p",trans_h);
        end
endmodule
...


# code 2
...
module test2();
  
  class transaction;
    bit[31:0] src,dst;
    
    function new(int src,int dst=5);
      this.src =src;
      this.dst =dst;
    endfunction :new
  endclass :transaction
    transaction trans_h;
  initial
    begin
      trans_h = new(100);
      $display("src=%p",trans_h.src);
      $display("dst=%p",trans_h.dst);
    end
endmodule :test2
...


# code 3
...
  module test;
    class account_c;
        int balance;

        function new(input int open_bal=5);
                balance=open_bal;
        endfunction :new

    endclass: account_c

account_c acnt_h=new(1000);
  initial
        begin
                $display("%p",acnt_h);
        end
endmodule
...
