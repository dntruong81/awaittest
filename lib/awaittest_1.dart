void main() {
  print ('Bat dau chuong trinh:');
  print(makeOrderMessage());
}
String makeOrderMessage() {
  var order = getUserOrder();
  return ('Your order is: $order');
}
Future<String> getUserOrder() {
  return  Future.delayed(Duration(seconds: 10),()=>'Large latte');
}