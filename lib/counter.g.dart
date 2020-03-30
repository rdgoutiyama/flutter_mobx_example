// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Counter on _CounterBase, Store {
  Computed<int> _$dataComputed;

  @override
  int get data => (_$dataComputed ??= Computed<int>(() => super.data)).value;

  final _$valueAtom = Atom(name: '_CounterBase.value');

  @override
  int get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$_CounterBaseActionController = ActionController(name: '_CounterBase');

  @override
  void increament() {
    final _$actionInfo = _$_CounterBaseActionController.startAction();
    try {
      return super.increament();
    } finally {
      _$_CounterBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'value: ${value.toString()},data: ${data.toString()}';
    return '{$string}';
  }
}
