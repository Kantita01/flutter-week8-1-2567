Stream<int> createNumber(int count) async* {
  for (var i = 1; i < count; i++) {
    yield i;
  }
}

void broadcastSteam() {
  var stream = createNumber(5);
  var bStream = stream.asBroadcastStream();
  if (bStream.isBroadcast) {
    print("Broadcast Stream");
  } else {
    print("Single Stream");
  }

  bStream.first.then((x) => print("First cevent:$x"));
  bStream.last.then((x) => print("Last cevent:$x"));
  bStream.length.then((x) => print("Length of Stream:$x"));
  stream = createNumber(0);
  bStream = stream.asBroadcastStream();
  bStream.isEmpty.then((x) => print("Is Empty :$x"));
}
