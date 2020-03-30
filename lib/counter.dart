import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'counter.g.dart';

class Counter = _CounterBase with _$Counter;

abstract class _CounterBase with Store {
  @observable
  int value = 0;

  @computed
  int get data => 2 * value;

  @action
  void increament() {
    value++;
  }
}