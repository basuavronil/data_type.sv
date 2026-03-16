module test;
  bit [10:0] a [$];
  initial begin
    a = {10,20,30,40,50,60,70,80,90,100};
    a.push_front(10);  //void function so it will not return any value 
    $display("%0p",a);
    a.push_back(120);
    $display (" a = %0p", a);
    a.pop_front();
    $display("%0p",a);
    a.pop_back();
    $display("%0p",a);
    a.shuffle();
    $display("%0p",a);
    $display("%0d", $size(a));
    $display("%0d", a.size());
    a.insert(3,290);
    $display(" %0p", a);
    a.delete(3);
    $display("a = %0p", a);
  end
endmodule

module test;
  bit [7:0] animal [$:4];
  string wild_animals [$];
  initial begin
    // bounded que
    animal = { 1, 3, 5, 7, 9};
    animal.push_front(10);
    $display(" animal = %0p", animal);
    animal.push_back(20);
    $display(" animal = %0p", animal);
    $display (" size = %0d", $size(animal));
    // unbounded que
    wild_animals = {"Tigers", "Lions", "Leopards"};
    wild_animals.push_front("Monkeys");
    $display ("wild_animal = %0p", wild_animals);
    wild_animals.push_back("Snakes");
    $display ("wild_animal = %0p  size = %0d", wild_animals, $size(wild_animals));
    // fifo
    wild_animals.push_back("Rhino");
    wild_animals.pop_front();
    $display("wild_name = %0p", wild_animals);
  end
endmodule
