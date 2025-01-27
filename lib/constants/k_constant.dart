import 'dart:async';

final kCartITemCountBlocInstance = CartItemsBloc();

class CartItemsBloc {
  final _streamController = StreamController<int>();

  StreamSink<int> get cartItemsSink => _streamController.sink;
  Stream<int> get cartItemsStream => _streamController.stream;
}
