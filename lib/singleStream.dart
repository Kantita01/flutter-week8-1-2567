Stream<int> createNumber(int count) async* {
  for (var i = 1; i < count; i++) {
    if(i == 4) {
      throw Exception("4 number");
    }
    yield i;
  }
  //await for (String data in getUserName2()) {
  //  print(data);    
  //}
}

void subscribeListen() {
  Stream stream = createNumber(5);
  final subscription = stream.listen(null);
  subscription.onData((x) => print("number $x"));
  subscription.onError((err) => print("error:$err"));
  subscription.onDone(() => print("Done"));
  //Stream stream = createNumber(5);
  //stream.listen(
  //  (x) =>print("NUmber:$x"),
  //  onError: (err)=>print("error:$err"),
  //  onDone: () => print("Done"),
  //);
}
