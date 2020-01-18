import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _chaveform = GlobalKey<FormState>();
  //Variáveis usadas em conjunto com o CheckBox
  bool estadoopcao1=false,estadoopcao2=false,estadoopcao3=false;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Exemplo'),
        ),
        body: _body(),
    );
  }

  _body(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(8),
      color: Colors.orange,
      child: Form(
        key: _chaveform,
        child: Column(
          children: <Widget>[
            _texto('Escolha uma opção:'),
            Row(
              children: <Widget>[
                Checkbox(
                  value: estadoopcao1,
                  onChanged: (value){
                    setState(() {
                      estadoopcao1 = value;
                    });
                  },
                ),
                _textocheckbox('Opção 1'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: estadoopcao2,
                  onChanged: (value){
                    setState(() {
                      estadoopcao2 = value;
                    });
                  },
                ),
                _textocheckbox('Opção 2'),
              ],
            ),
            RaisedButton(
              child: Text('VERIFICAR'),
              onPressed: (){
                print('Opção 1: $estadoopcao1');
                print('Opção 2: $estadoopcao2');
                //Aqui poderia ser verificado a combinação de opções
                if (estadoopcao1 && estadoopcao2){
                  print('Os dois foram marcados...');
                }
                if(!estadoopcao1 && estadoopcao2){
                  print('Primeiro desmarcado e o segundo marcado...');
                }
                if(estadoopcao1 && !estadoopcao2){
                  print('Primeiro marcado e o segundo desmarcado...');
                }
                if(!estadoopcao1 && !estadoopcao2){
                  print('Os dois foram desmarcados...');
                }
              },
            )
          ],
        ),
      ),
    );
  }

  //Métodos usados para facilitar a criação dos textos
  _texto(String mensagem){
    return Text(mensagem,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),);
  }

_textocheckbox(String mensagem){
    return Text(mensagem,style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),);
  }
  
}