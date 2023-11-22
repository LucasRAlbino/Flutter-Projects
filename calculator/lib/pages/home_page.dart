import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String operacao = '';
  String numero = '0';
  double primeiroNumero = 0.0;

  void calcular(String tecla) {
    switch (tecla) {
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case ',':
        setState(() {
          numero += tecla;

          numero = numero.replaceAll(',', '.');

          if (numero.contains('.')) {
            //double numeroDouble = double.parse(numero);
            //numero = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          }
        });
        break;

      case '+':
        operacao = tecla;
        primeiroNumero = double.parse(numero);
        numero = '0';
        break;

      case '=':
        double resultado = 0.0;
        if (operacao == '+') {
          resultado = primeiroNumero + double.parse(numero);
        }

        if (operacao == '-') {
          resultado = primeiroNumero - double.parse(numero);
        }
        setState(() {
          numero = resultado.toString();
        });
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;
      default:
        numero += tecla;
        break;

      //case '/':
      //case '-':
      //case 'X':
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        title: Center(
          child: Text('Calculadora'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                numero,
                style: TextStyle(
                  fontSize: 50,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('AC'),
                child: Text(
                  'AC',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              Text(' '),
              Text(' '),
              GestureDetector(
                onTap: () => calcular('<X'),
                child: Text(
                  '<X',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  calcular('7');
                },
                child: Text(
                  '7',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('8'),
                child: Text(
                  '8',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('9'),
                child: Text(
                  '9',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('/'),
                child: Text(
                  '/',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('4'),
                child: Text(
                  '4',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('5'),
                child: Text(
                  '5',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('6'),
                child: Text(
                  '6',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('X'),
                child: Text(
                  'X',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('1'),
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('2'),
                child: Text(
                  '2',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('3'),
                child: Text(
                  '3',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('-'),
                child: Text(
                  '-',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () => calcular('0'),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular(','),
                child: Text(
                  ',',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('='),
                child: Text(
                  '=',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => calcular('+'),
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 27,
                  ),
                ),
              ),
            ],
          ),
          Text('Coluna 6'),
        ],
      ),
    );
  }
}
