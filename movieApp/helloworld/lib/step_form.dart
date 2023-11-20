import 'package:flutter/material.dart';

import './page_indicator.dart';
import './page_body.dart';

class StepForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StepFormState();
  }
}

class _StepFormState extends State<StepForm> {
  final PageController _stepFormController = PageController();

  int _page = 0;

  List _pagesList = [
    pageBody(
        'https://classic.exame.com/wp-content/uploads/2022/05/Capturar.jpg?quality=70&strip=info&w=1024',
        'Top Gun: Maverick',
        'Após mais de trinta anos de serviço como um dos melhores aviadores da Marinha, Pete Mitchell está onde pertence, ultrapassando os limites como um piloto de teste intrépido e evitando a promoção de posto que o manteria em terra.'),
    pageBody(
        'https://assets-global.website-files.com/60ff690cd7b0537edb99a29a/62c4a0fc314c9f6d76f0a18e_coluna-freire-o-poderoso-chefão.jpg',
        'O Poderoso Chefão',
        'A série de filmes The Godfather consiste em três filmes de drama e suspense policial dirigidos por Francis Ford Coppola com base no romance homônimo do ítalo-americano Mario Puzo. A trilogia narra as tramas envolvendo a Família Corleone, umas das mais poderosas famílias da Máfia italiana nos Estados Unidos.'),
    pageBody(
        'https://www.opovo.com.br/_midias/jpg/2021/09/09/818x460/1_senhor_dos_aneis-17015105.jpg',
        'O Senhor dos Aneis',
        'Localizada no mundo ficcional na Terra Média, os três filmes seguem o jovem hobbit Frodo Bolseiro em sua missão de destruir o "Um Anel", assegurando assim também a destruição de seu criador, o Senhor das Trevas Sauron.'),
  ];

  void _changeStep(bool nextPage) {
    if (_page < 2 && nextPage) {
      setState(() {
        _page++;
      });
      _stepFormController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else if (_page > 0 && !nextPage) {
      setState(() {
        _page--;
      });
      _stepFormController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filmes'),
      ),
      body: PageView.builder(
        controller: _stepFormController,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return _pagesList[index];
        },
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              // Lógica para ação "Anterior"
              _changeStep(false);
            },
            child: Text('Anterior'),
          ),
          pageIndicator(_page == 0),
          pageIndicator(_page == 1),
          pageIndicator(_page == 2),
          ElevatedButton(
            onPressed: () {
              // Lógica para ação "Próximo"
              _changeStep(true);
            },
            child: Text('Próximo'),
          ),
        ],
      ),
    );
  }
}
