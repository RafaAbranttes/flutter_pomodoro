import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_pomodoro/components/cronometro_botao.dart';
import 'package:flutter_pomodoro/store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class Cronometro extends StatelessWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Observer(
        builder: (context) => Container(
              color: store.estaTrabalhando() ? Colors.red : Colors.green,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    store.estaTrabalhando()
                        ? "Hora de Trabalhar"
                        : "Hora de Descansar",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    store.minutos.toString().padLeft(2, '0') +
                        ":" +
                        store.segundos.toString().padLeft(2, '0'),
                    style: TextStyle(fontSize: 120, color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Observer(
                    builder: (_) => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        !store.iniciado
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CronometroBotao(
                                  texto: "Iniciar",
                                  icone: Icons.play_arrow,
                                  click: store.iniciar,
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CronometroBotao(
                                  texto: "Stop",
                                  icone: Icons.stop,
                                  click: store.parar,
                                ),
                              ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CronometroBotao(
                            texto: "Reiniciar",
                            icone: Icons.refresh_outlined,
                            click: store.reiniciar,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}
