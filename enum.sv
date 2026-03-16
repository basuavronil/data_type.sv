module tb; 
  enum bit [3:0] {s1=1,s2,s3=6,s4,s5} state;
  initial begin
   /* state = state.first();
    $display (" Value = %0d  name = %0s", state, state.name());
    state = state.last();
    $display ("value = %0d name = %0s", state, state.name());
    state = state.prev(2);
    $display("value = %0d  name = %0s", state, state.name());
    state = state.next(2);
    $display ("value = %0d name = %0s", state, state.name()); */
    
 /*   $display ("%0d", state.num());
    end
endmodule */ 
    
    for(state = state.first(); state <= state.last(); state = state.next())
      begin
      $display ("value = %0d name = %0s", state, state.name());
      end
  end
endmodule

/*module tb;

  typedef enum bit [5:0] {S1 =10 , S2, S3 = 20, S4, S5} state_t;
  state_t state;

  initial begin
    
    // Assign a state
    state = S3;

    $display("Current state : value = %0d name = %0s", state, state.name());

    // First state
    $display("First state   : value = %0d name = %0s", state.first(), state.first().name());

    // Last state
    $display("Last state    : value = %0d name = %0s", state.last(), state.last().name());

    // Next state
    $display("Next state    : value = %0d name = %0s", state.next(), state.next().name());

    // Previous state
    $display("Prev state    : value = %0d name = %0s", state.prev(), state.prev().name());

  end

endmodule*/
