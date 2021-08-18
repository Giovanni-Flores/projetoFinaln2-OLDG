import 'package:flutter/material.dart';

//Tela de Conteudo NINTENDO
class Nintendo extends StatelessWidget {
  const Nintendo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/nintendoBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 260)),
                Container(
                  alignment: Alignment.center,
                  width: 337,
                  height: 553,
                  decoration: BoxDecoration(
                    color: Color(0xFF664506).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 40, bottom: 10, left: 10, right: 10),
                        child: Text(
                          "       A Nintendo foi fundada no dia 23 de setembro de 1889 por Fusajiro Yamauchi em Kyoto, no Japão, como fabricante de um jogo de cartas chamado Hanafuda. Em 1969, o herdeiro da companhia, Hiroshi Yamauchi, decidiu expandir o campo de atuação da Nintendo, introduzindo-a no ramo dos jogos.",
                          style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 16,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10),
                        child: Text(
                          "       Na década de 1970 a Nintendo entrou oficialmente para o mercado dos games, mas foi somente nos anos 1980 que a empresa chefiada por Yamauchi se consolidou no setor, após sua chegada aos Estados Unidos.",
                          style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 16,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10),
                        child: Text(
                          "       Especializada no desenvolvimento de consoles e jogos eletrônicos, a Nintendo se destacou pelo sucesso de videogames como NES (Nintendo Entertainment System), Super Nintendo, Nintendo 64, Nintendo Wii, 3DS, entre outros. Além dos aparelhos, a Nintendo também foi responsável pela criação de jogos clássicos como 'Donkey Kong', 'Super Mario Bros' e 'Zelda'.",
                          style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 16,
                              color: Colors.white
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: SizedBox(
                      width: 143,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            backgroundColor: Color(0xFFC33B00),
                            elevation: 15,
                        ),
                        child: Text(
                          "VOLTAR",
                          style: TextStyle(
                              fontFamily: "Acme",
                              fontSize: 20,
                              color: Colors.white
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
