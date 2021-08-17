import 'package:flutter/material.dart';

class Sega extends StatelessWidget {
  const Sega({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/segaBackground.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 321)),
                Container(
                  alignment: Alignment.center,
                  width: 337,
                  height: 653,
                  decoration: BoxDecoration(
                    color: Color(0xFF010C0D).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 40, bottom: 10, left: 10, right: 10),
                      child: Text(
                        "       A SEGA foi registrada em 1952 em Tóquio, no Japão. Famosa por criar fliperamas, em 1985 a companhia se popularizou no mundo dos consoles ao lançar o Master System. Apenas um ano depois, a SEGA apresentou ao mundo o videogame Mega Drive, que dominou o mercado europeu e americano a partir do protagonista Sonic, o porco-espinho veloz que estrelou jogos clássicos, como Sonic the Hedgehog.",
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
                          "       Depois do sucesso do Mega Drive, a SEGA inovou introduzindo um console com suporte a CDS, o SEGA CD. Pouco tempo depois, a companhia lançou para o mercado o SEGA Saturn e, em 1988, o DREAMCAST. Em 2001, a empresa deixou de fabricar consoles e passou a investir no desenvolvimento de softwares, incluindo games para a Sony, Nintendo e Microsoft.",
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
                          "       Para reacender o interesse do público, em 2017 a companhia criou o projeto SEGA Forever, relançando jogos do Master System e Mega Drive para smartphones. Entre eles estão Sonic the Hedgehog, Golden Axe, Comix Zone, Altered Beast e Streets of Rage. Além disso, a SEGA iniciou um programa para relançar os consoles populares dos anos 1980 e 1990.",
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
                        backgroundColor: Color(0xFF000E31),
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
