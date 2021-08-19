import 'package:flutter/material.dart';

//Tela de Conteudo ATARI
class Atari extends StatelessWidget {
  const Atari({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/atariBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Image.asset("images/atariLogo.png"),
                  Padding(padding: EdgeInsets.only(bottom: 40)),
                  Container(
                    alignment: Alignment.center,
                    width: 337,
                    height: 753,
                    decoration: BoxDecoration(
                      color: Color(0xFF3D0707).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 40, bottom: 10, left: 10, right: 10),
                          child: Text(
                            "       Em 1972, a empresa marcou seu nome na história como uma das pioneiras do setor. Isso porque ajudou a popularizar os jogos domésticos em escala mundial. A princípio com o lançamento de Pong e fliperamas e, mais tarde, com o Video Computar System, a empresa pode ser considerada matriarca do mundo dos games.",
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
                            "       Primeiramente, a dupla nomeou a empresa como Syzygy e focou em consertar máquinas de pinball. Entretanto, em 1971, criaram seu primeiro jogo: Computar Space. A máquina foi um dos primeiros arcades comerciais da história, mas se destacou por outras inovações. Dentre elas, a capacidade de reproduzir funções sem ajuda de computador e com uma tela simples.",
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
                            "       Em 1976, Nolan Bushnell decidiu que era hora de realizar um sonho pessoal com a empresa. O fundador queria cria um console capaz de rodar todos os jogos lançados pela empresa. Para isso, então, precisou vender tudo para a Warner. Especula-se que a venda tenha girado em torno de 30 milhões de dólares.",
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
                            "       Com o crescimento da empresa, o clima era de liberdade e comemoração nos escritórios. Os engenheiros faziam festas frequentes, andavam descalço e usavam drogas enquanto trabalhava. Assim, em 1978, a situação ficou insustentável para Bushnell. Assim como Dabney, ele abandonou a empresa. Apesar disso, ele voltou para trabalhar como consultor, em 2010.",
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
                              backgroundColor: Color(0xFFC81515),
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
