void main(){
  List<double> prices=[300,200,600,450,1000,800];

  var expensivePrices= prices.where((price) => price >500);
  print("Prices bove 500: ");
  print(expensivePrices.toList());

  var increasedPrices = prices.map((price)=> price *1.10);
  print("Prices increased by 10%: ");
  print(increasedPrices.toList());

  double total =increasedPrices.fold(0.0, (sum,price)=> sum + price,);
  print("total: ");
  print(total);
}