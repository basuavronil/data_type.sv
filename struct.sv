/*module test;
  struct {
    bit [3:0] a;
    int b;
    string c;
  } s2;
  initial begin
    s2.a = 4'b0001;
    s2.b = 32'd32;
    s2.c = " Hello ";
    $display (" %0p ", s2);
  end 
endmodule */

//string inside packed 
/*module test;
  struct packed {
    bit [3:0] a;
    int b;
    string c;
  } s2;
  initial begin
    s2.a = 4'b0001;
    s2.b = 32'd32;
    s2.c = " Hello ";
    $display (" %0p ", s2);
  end 
endmodule*/

//using typedef
/*module test;
  typedef struct{
    bit [3:0] a;
    int b;
    string c;
  } s1;
  s1 s2, s3;
  initial begin
    s2.a = 4'b0001;
    s2.b = 32'd32;
    s2.c = " Hello ";
    $display (" %0p ", s2);
    
    s3.a = 4'b1101;
    s3.b = 32'd12;
    s3.c = " world ";
    $display (" %0p ", s3);
  end
endmodule*/

module test;
  typedef struct {
    string name;
    int salary;
    bit [3:0] id;
  } employee;
  function void print_struct ( employee emp);
    $display(" emp = %0p", emp );
  endfunction
  
  //feature that will contain all the values of the function
  function employee features ( string name, int salary, bit [3:0] id); // inputs of functions
    employee emp10; //local strcut Variable
    emp10.name = name;
    emp10.salary = salary;
    emp10.id = id ;
    return emp10;
  endfunction
  
  initial begin
    employee emp1, emp2;
    emp1 = features (" Avronil ", 31'd1010, 4'd8);
    emp2 = features (" Sama ", 31'd1111, 4'd12);
    print_struct(emp1);
    print_struct(emp2);
  end
endmodule
