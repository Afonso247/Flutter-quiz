import 'package:quiz_app/models/question_model.dart';

const questions = [
  QuestionModel(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuestionModel(
    'How are Flutter UIs built?',
    [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using XCode for iOS and Android Studio for Android',
    ],
  ),
  QuestionModel(
    'What\'s the purpose of a StatefulWidget?',
    [
      'To contain data that changes over time',
      'To contain data that does not change over time',
      'To contain data that can be accessed by subwidgets',
      'To contain data that cannot be accessed by subwidgets',
    ],
  ),
  QuestionModel(
    'What\'s the purpose of a StatelessWidget?',
    [
      'To contain data that changes over time',
      'To contain data that does not change over time',
      'To contain data that can be accessed by subwidgets',
      'To contain data that cannot be accessed by subwidgets',
    ],
  ),
  QuestionModel(
    'What\'s the main difference between a StatefulWidget and a StatelessWidget?',
    [
      'StatelessWidgets can\'t have states',
      'StatelessWidgets can have states',
      'StatefulWidgets can\'t have states',
      'StatefulWidgets can have states',
    ]
  ),
];