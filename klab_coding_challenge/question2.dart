class product{
    String name; 
    int price;

    product(this.name, this.price);
    String toString(){
      return'{Name:${this.name},Price:${this.price}}';
    }

}
void main(){
  var list=[];
  var list2=[];
  var list3=[];
  int sum1=0, sum2=0;
  var sortedByValueMap;
  Map item={
    'Bike':100,
    'TV':200,
    'Album':10,
    'Book':5,
    'phone':500,
    'computer':1000
  };
  item.forEach((key,value)=>list.add(product(key,value)));
  print("All product:$list");
  sortedByValueMap=Map.fromEntries(item.entries.toList()..sort((e1,e2)=>e1.value.compareTo(e2.value)));
  print("sorted items:$sortedByValueMap");
  sortedByValueMap.forEach((key,value)=>list2.add(value));
  print("the product cheap is:${sortedByValueMap.keys.toList().first}");
  print("the expensive product is:${sortedByValueMap.keys.toList().last}");
  for(int i in list2){
    sum1+=i;
    if(i>10)
    {
      list3.add(i);
    }
  };
 print("sum of total price of product is:$sum1");
 for(int j in list3){
  sum2+=j;
 };
 print("the total price of product after removing the ones less than 10:$sum2");
}