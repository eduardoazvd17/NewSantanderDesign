import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool exibirSaldo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  color: Colors.black,
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Santander',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Olá, Eduardo',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Ag 0000 Cc 00000000-0',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                color: Colors.grey[300],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Saldo disponível:',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(height: 5),
                            exibirSaldo
                                ? Text(
                                    'R\$ 150.368,84',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : Container(
                                    height: 23,
                                    width: 230,
                                    color: Colors.white,
                                  ),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          child: IconButton(
                            icon: Icon(
                              exibirSaldo
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              setState(() {
                                exibirSaldo = !exibirSaldo;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Meus Cartões:',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        leading: Icon(Icons.payment),
                        title: Text('Cartão final 5218'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Empréstimos:',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        leading: CircleAvatar(child: Icon(Icons.money_off)),
                        title: Text('Empréstimos'),
                        subtitle: Text('Organize sua vida financiera.'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Poupança e Investimentos:',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        leading: CircleAvatar(child: Icon(Icons.attach_money)),
                        title: Text('Poupança'),
                        subtitle: Text('Guarde seu dinheiro agora mesmo.'),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        leading:
                            CircleAvatar(child: Icon(Icons.monetization_on)),
                        title: Text('Investimentos'),
                        subtitle: Text('Faça seu dinheiro render mais.'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Atendimento:',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      color: Colors.white,
                      child: ExpansionTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.contacts),
                        ),
                        title: Text(
                          'Fale com a gente, encontre nossos contatos ou procure uma agência.',
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
