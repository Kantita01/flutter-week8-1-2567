import 'package:dart_week8/asynchronus.dart';
import 'package:dart_week8/broadcastStream.dart';
import 'package:dart_week8/future.dart';
import 'package:dart_week8/singleStream.dart';
import 'package:dart_week8/stream.dart';
import 'package:dart_week8/synchronus.dart';


void main() {
  callBroadcastSteam();
  //subScribeListen();
  //callStream();
  //callFuture();
  //callSyncronus();
  //callAsyncronus();
}

void callBroadcastSteam() {
  broadcastSteam();
}

void subScribeListen() {
  subscribeListen();
}

void callStream() async {
  await for (String  data in getUserName2()) {
  print(data);
  }
}

void callFuture() {
  print("Start");
  getData();
  //getUserName().then((value) => print(value,));
  print("End");
}


void callAsyncronus() {
  asyncronus();
}

void callSyncronus() {
  synchronus();
}