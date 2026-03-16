module tb;
  string s1;
  string s2;
  string s3;
  string s4;
  string s5;
  string s6;
  int b;
    initial begin
       s2 = "my favourite car";
       s3 = "is Thar Roxx";
       s5 = "IS THAR ROXX";

//OPERATORS
       // concatenation
       s1 = {s2,s3};
       
       //replication 
        s4 = {3{s1}};
       //$display ( "the Value of replication is %0d", {{3{s1}});

       //equality and inequality 
         if (s2 == s3)
           $display ("equality is eshtablished");
         else 
           $display (" equality is not eshtablished");

       // greater than less than 
         if (s2 > s3)
           $display ("S2 is greater than S3");
         else 
           $display (" S3 is greater than S2");

      
       $display (" s2 = %0s | s3 = %0s | s1= %0s", s2, s3, s1);
       $display (" s4 = %0s ", s4);

//METHODS
       //length
       $display ("size of s1, s2, s3, s4 is %0d %0d %0d %0d", s1.len(), s2.len(), s3.len(), s4.len());

       //compare
       $display (" compare = %0d ", s1.compare(s2));

       //icompare 
       $display ("compare = %0d", s3.icompare(s5));

       //get.c
       $display (" character = %0s ", s1.getc(0));
       $display (" character = %0s ", s1.getc(1));
       $display (" character = %0s ", s1.getc(2));
       $display (" character = %0s ", s1.getc(3));
       $display (" character = %0s ", s1.getc(4));
       $display (" character = %0s ", s1.getc(5));
       $display (" character = %0s ", s1.getc(6));
       $display (" character = %0s ", s1.getc(7));


    //put.c
      
      s1.putc(0,"z");
      $display("s1 = %0s", s1);
      //s1.putc(1,"z");
      //s1.putc(2,"z");
     // $display("the updated string is = %0s", s1); 
      
      b = s1.atoi();
      $display("b = %0b", b);
   
end 
endmodule
