Stream<String> getUserName2() async* {
  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Pu say';

  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Gulp gulp';

  await Future.delayed(Duration(seconds: 2));
  yield 'Mr.Best lnwza';
}
