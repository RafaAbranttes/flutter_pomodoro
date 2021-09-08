import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/components/cronomentro.dart';
import 'package:flutter_pomodoro/components/entrada_tempo.dart';
import 'package:flutter_pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Cronometro(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Observer(
                builder: (_) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        EntradaTempo(
                          titulo: 'Trabalho',
                          valor: store.tempoTrabalho,
                          inc: store.iniciado && store.estaTrabalhando() ? null : store.incrementarTempoTrabalho,
                          dec: store.iniciado && store.estaTrabalhando() ? null : store.decrementarTempoTrabalho,
                        ),
                        EntradaTempo(
                          titulo: 'Descanso',
                          valor: store.tempoDescanso,
                          inc: store.iniciado && store.estaDescansando() ? null : store.incrementarTempoDescanso,
                          dec: store.iniciado && store.estaDescansando() ? null : store.decrementarTempoDescanso,
                        ),
                      ],
                    )),
          ),
        ],
      ),
    );
  }
}
