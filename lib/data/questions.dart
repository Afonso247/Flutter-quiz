import 'package:quiz_app/models/question_model.dart';

const questions = [
  QuestionModel(
    'Quais são os principais blocos de construção das UIs do Flutter?',
    [
      'Widgets',
      'Componentes',
      'Blocos',
      'Funções',
    ],
  ),
  QuestionModel(
    'Como são construídas as UIs do Flutter?',
    [
      'Combinando widgets no código',
      'Combinando widgets em um editor visual',
      'Definindo widgets em arquivos de configuração',
      'Usando XCode para iOS e Android Studio para Android',
    ],
  ),
  QuestionModel(
    'Qual é o propósito de um StatefulWidget?',
    [
      'Conter dados que mudam ao longo do tempo',
      'Conter dados que não mudam ao longo do tempo',
      'Conter dados que podem ser acessados por subwidgets',
      'Conter dados que não podem ser acessados por subwidgets',
    ],
  ),
  QuestionModel(
    'Qual é o propósito de um StatelessWidget?',
    [
      'Conter dados que não mudam ao longo do tempo',
      'Conter dados que mudam ao longo do tempo',
      'Conter dados que podem ser acessados por subwidgets',
      'Conter dados que não podem ser acessados por subwidgets',
    ],
  ),
  QuestionModel(
    'Qual é a principal diferença entre um StatefulWidget e um StatelessWidget?',
    [
      'StatelessWidgets não podem ter estados',
      'StatelessWidgets podem ter estados',
      'StatefulWidgets não podem ter estados',
      'Não existe diferença entre os dois',
    ]
  ),
];