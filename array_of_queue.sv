module test;
  int a[5][$:4];
  initial begin
    a[0] = {1,2,3,4,5};
    a[1] = {1,2};
    a[2] = {2,3,5,6};
    a[3] = {5,2,4,5,6,9};
    $display("-----------------------------");
    $display ("-----------%p",a);
   // foreach (a[i,j])begin
    //  $display ("a[%0d][%0d] = %0d", i, j, a[i][j]);end
  end
endmodule

/*module test;
  bit [8:0] a [$][$];
  initial begin 
    a[0] = {0,1,2,3,4};
    a[1] = {10,20,30};
    a[3] = {5,10,15,20,25,30};
    $display ( " a = %0p", a);
    foreach (a[i,j])
      $display(" a[%0d][%0d]=%0d", i, j, a[i][j]);
  end
endmodule*/
