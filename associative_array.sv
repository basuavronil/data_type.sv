module test;
  bit [3:0] A [string];
  string a, idx ; //for checking first and last values of associative arrays we require an input arguement
  
  initial begin
    A ["RED"] = 2;
    $display (" A = %0p ", A);
    A ["BLUE"] = 4;
    $display (" A = %0p ", A);
    A ["GREEN"] = 6;
    $display ("A = %0p", A);
    foreach (A[i])
      begin
        $display (" the value is %0d the index is %0s", A[i], i);
        // the value is 4 the index is BLUE
        //the value is 6 the index is GREEN
        //the value is 2 the index is RED
      end 
    
    if (A.exists("YELLOW"))
      $display(" index YELLOW is present");
    else 
      $display ("index YELLOW is not present");
    
    A.first(a);
    $display ( " the first index is %0s and the value is %0d", a, A[a]);
    //the first index is BLUE and the value is 4
    
    A.last(a);
    $display ( " the last index is %0s and the value is %0d", a, A[a]);
    //the last index is RED and the value is 2
    
    //idx = "BLUE";
    A.next(idx);
    $display (" the next index is %0s and the value is %0d", idx,A[idx]);
    //the next index is GREEN and the value is 6
    
    //idx = "BLACK";
    A.prev (idx);
    $display (" thee prev index is %0s and the value is %0d", idx, A[idx]);
    //thee next index is BLACK and the value is 0
    
    a = "GREEN";
    A.prev(a);
    $display ("The prev value is %0d and the index is %0s", A[a], a);
    //The prev value is 4 and the index is BLUE

    A.delete("BLUE");
    $display( " array = %0p", A);
    // array = '{"GREEN":'h6, "RED":'h2} 
    
    
    
    
   
  end
endmodule 
