import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> xOro = ["X", "O"];
  List<String> textoTela = ['', '', '', '', '', '', '', '', '', 'X e O'];
  int zeroouum = 0;
  int qualQuadradoEh = 0;
  int vezesJogadas = 0;
  int quantasVezesXGanhou = 0;
  int quantasVezesOGanhou = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                _limparTabuleiro();
                quantasVezesXGanhou = 0;
                quantasVezesOGanhou = 0;
              },
              icon: const Icon(Icons.refresh)),
        ],
        title: const Center(child: Text('Jogo da velha')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildPlacar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      qualQuadradoEh = 0;
                      if (textoTela[qualQuadradoEh] == '') {
                        _setarTextoTela();
                        _verificarGanhador();
                        _trocarXpeloO();
                      }
                    },
                    child: Container(
                      child: Center(child: Text(textoTela[0])),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      width: 100,
                      height: 100,
                    ),
                  )
                ],
              ),
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 1;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[1])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 2;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[2])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 3;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[3])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 4;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[4])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 5;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[5])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 6;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[6])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 7;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[7])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
              Column(children: [
                InkWell(
                  onTap: () {
                    qualQuadradoEh = 8;
                    if (textoTela[qualQuadradoEh] == '') {
                      _setarTextoTela();
                      _verificarGanhador();
                      _trocarXpeloO();
                    }
                  },
                  child: Container(
                    child: Center(child: Text(textoTela[8])),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 100,
                    height: 100,
                  ),
                )
              ]),
            ],
          ),
          _buildVezdequem(),
        ],
      ),
    );
  }

  _setarTextoTela() {
    setState(() => textoTela[qualQuadradoEh] = xOro[zeroouum]);
    vezesJogadas++;
  }

  _trocarXpeloO() {
    if (zeroouum == 0) {
      zeroouum = 1;
    } else {
      zeroouum = 0;
    }
  }

  _verificarGanhador() {
    if (textoTela[0] == textoTela[1] &&
        textoTela[0] == textoTela[2] &&
        textoTela[0] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[0], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[3] == textoTela[4] &&
        textoTela[3] == textoTela[5] &&
        textoTela[3] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[3], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[6] == textoTela[7] &&
        textoTela[6] == textoTela[8] &&
        textoTela[6] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[6], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[0] == textoTela[3] &&
        textoTela[0] == textoTela[6] &&
        textoTela[0] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[0], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[1] == textoTela[4] &&
        textoTela[1] == textoTela[7] &&
        textoTela[1] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[1], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[2] == textoTela[5] &&
        textoTela[2] == textoTela[8] &&
        textoTela[2] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[2], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[0] == textoTela[4] &&
        textoTela[0] == textoTela[8] &&
        textoTela[0] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[0], context);
      _limparTabuleiro();
      return;
    }

    if (textoTela[2] == textoTela[4] &&
        textoTela[2] == textoTela[6] &&
        textoTela[2] != '') {
      _quemGanhou();
      _showAlertDialog('Vencedor', textoTela[2], context);
      _limparTabuleiro();
      return;
    }

    if (vezesJogadas == 9) {
      _showAlertDialog('Empate', textoTela[9], context);
      _limparTabuleiro();
    }
  }

  _limparTabuleiro() {
    setState(() {
      for (int i = 0; i < 9; i++) {
        textoTela[i] = '';
      }
    });
    vezesJogadas = 0;
  }

  _showAlertDialog(String s, String? textoTela, context) {
    showDialog<String>(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(s),
              content: Text(textoTela!),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('OK'),
                )
              ],
            ));
  }

  _buildVezdequem() {
    String texto = xOro[zeroouum];
    return Text(
      "Vez do $texto",
      style: const TextStyle(fontSize: 30),
    );
  }

  _quemGanhou() {
    if (textoTela[qualQuadradoEh] == 'X') {
      quantasVezesXGanhou++;
    }
    if (textoTela[qualQuadradoEh] == 'O') {
      quantasVezesOGanhou++;
    }
  }

  _buildPlacar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.close, size: 100),
        Text(
          '$quantasVezesXGanhou x $quantasVezesOGanhou',
          style: const TextStyle(fontSize: 45),
        ),
        const Icon(Icons.circle_outlined, size: 100),
      ],
    );
  }
}
