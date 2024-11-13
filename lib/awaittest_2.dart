Future<void> main() async {
  print ('Bat dau chuong trinh:');
  print(await makeOrderMessage());
}
Future<String> makeOrderMessage() async {
  var order = await getUserOrder();
  return ('Your order is: $order');
}
Future<String> getUserOrder() {
  return  Future.delayed(Duration(seconds: 10),()=>'Large latte');
}