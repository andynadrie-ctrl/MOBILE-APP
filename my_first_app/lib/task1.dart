double price({required double unit, 
required int quantity,
 double discount = 0 }
 )
 {return (unit*quantity)* (1-discount/100);}

 void main (){
  print(price(quantity: 5, unit: 500));
  print(price(quantity: 2, unit: 400,discount: 10));
  print(price(quantity: 5, unit: 500));
  
 }