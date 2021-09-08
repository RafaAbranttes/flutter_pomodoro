// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PomodoroStore on __PomodoroStore, Store {
  final _$tipoIntervaloAtom = Atom(name: '__PomodoroStore.tipoIntervalo');

  @override
  TipoIntervalo get tipoIntervalo {
    _$tipoIntervaloAtom.reportRead();
    return super.tipoIntervalo;
  }

  @override
  set tipoIntervalo(TipoIntervalo value) {
    _$tipoIntervaloAtom.reportWrite(value, super.tipoIntervalo, () {
      super.tipoIntervalo = value;
    });
  }

  final _$iniciadoAtom = Atom(name: '__PomodoroStore.iniciado');

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  final _$minutosAtom = Atom(name: '__PomodoroStore.minutos');

  @override
  int get minutos {
    _$minutosAtom.reportRead();
    return super.minutos;
  }

  @override
  set minutos(int value) {
    _$minutosAtom.reportWrite(value, super.minutos, () {
      super.minutos = value;
    });
  }

  final _$segundosAtom = Atom(name: '__PomodoroStore.segundos');

  @override
  int get segundos {
    _$segundosAtom.reportRead();
    return super.segundos;
  }

  @override
  set segundos(int value) {
    _$segundosAtom.reportWrite(value, super.segundos, () {
      super.segundos = value;
    });
  }

  final _$tempoTrabalhoAtom = Atom(name: '__PomodoroStore.tempoTrabalho');

  @override
  int get tempoTrabalho {
    _$tempoTrabalhoAtom.reportRead();
    return super.tempoTrabalho;
  }

  @override
  set tempoTrabalho(int value) {
    _$tempoTrabalhoAtom.reportWrite(value, super.tempoTrabalho, () {
      super.tempoTrabalho = value;
    });
  }

  final _$tempoDescansoAtom = Atom(name: '__PomodoroStore.tempoDescanso');

  @override
  int get tempoDescanso {
    _$tempoDescansoAtom.reportRead();
    return super.tempoDescanso;
  }

  @override
  set tempoDescanso(int value) {
    _$tempoDescansoAtom.reportWrite(value, super.tempoDescanso, () {
      super.tempoDescanso = value;
    });
  }

  final _$__PomodoroStoreActionController =
      ActionController(name: '__PomodoroStore');

  @override
  void iniciar() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.iniciar');
    try {
      return super.iniciar();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void parar() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.parar');
    try {
      return super.parar();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reiniciar() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.reiniciar');
    try {
      return super.reiniciar();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoTrabalho() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.incrementarTempoTrabalho');
    try {
      return super.incrementarTempoTrabalho();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoTrabalho() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.decrementarTempoTrabalho');
    try {
      return super.decrementarTempoTrabalho();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarTempoDescanso() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.incrementarTempoDescanso');
    try {
      return super.incrementarTempoDescanso();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarTempoDescanso() {
    final _$actionInfo = _$__PomodoroStoreActionController.startAction(
        name: '__PomodoroStore.decrementarTempoDescanso');
    try {
      return super.decrementarTempoDescanso();
    } finally {
      _$__PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tipoIntervalo: ${tipoIntervalo},
iniciado: ${iniciado},
minutos: ${minutos},
segundos: ${segundos},
tempoTrabalho: ${tempoTrabalho},
tempoDescanso: ${tempoDescanso}
    ''';
  }
}
