// @dart=2.7
import '../model/option.dart';
import '../model/question.dart';

final questions = [
  Question(
    text: "In 1972, the company marked its name in history as one of the pioneers in the sector.",
    options: [
      Option(code: 'A', text: 'Nintendo', isCorrect: false),
      Option(code: 'B', text: 'Atari', isCorrect: true),
      Option(code: 'C', text: 'Sega', isCorrect: false),
      Option(code: 'D', text: 'Capcom', isCorrect: false),
    ],
    solution: "Answer: Atari",
  ),
  Question(
    text: "It was founded on September 23, 1889 by Fusajiro Yamauchi in Kyoto:",
    options: [
      Option(code: 'A', text: 'Sega', isCorrect: false),
      Option(code: 'B', text: 'Atari', isCorrect: false),
      Option(code: 'C', text: 'Playstation', isCorrect: false),
      Option(code: 'D', text: 'Nintendo', isCorrect: true),
    ],
    solution: "Answer: Nintendo",
  ),
  Question(
    text: "Nintendo was also responsible for creating classic games like:",
    options: [
      Option(code: 'A', text: 'Donkey Kong', isCorrect: true),
      Option(code: 'B', text: 'Mega-Man', isCorrect: false),
      Option(code: 'C', text: 'Street Fighter', isCorrect: false),
      Option(code: 'D', text: 'Mortal Kombat', isCorrect: false),
    ],
    solution: "Answer: Donkey Kong",
  ),
  Question(
    text:
    "____ was registered in 1952 in Tokyo, Japan.",
    options: [
      Option(code: 'A', text: 'Atari', isCorrect: false),
      Option(code: 'B', text: 'Warner Bros', isCorrect: false),
      Option(code: 'C', text: "Nintendo", isCorrect: false),
      Option(code: 'D', text: "Sega", isCorrect: true),
    ],
    solution: "Answer: Sega",
  ),
  Question(
    text: "Sonic is a:",
    options: [
      Option(code: 'A', text: 'Lion', isCorrect: false),
      Option(code: 'B', text: 'Porcupine', isCorrect: false),
      Option(code: 'C', text: 'Hedgehog', isCorrect: true),
      Option(code: 'D', text: 'Rat', isCorrect: false),
    ],
    solution: "Answer: Hedgehog",
  ),
  Question(
    text: "Who is Mario's best friend:",
    options: [
      Option(code: 'A', text: 'Yoshi', isCorrect: false),
      Option(code: 'B', text: 'Luigi', isCorrect: true),
      Option(code: 'C', text: 'Bowser', isCorrect: false),
      Option(code: 'D', text: 'Tod', isCorrect: false,
      ),
    ],
    solution: "Answer: Luigi",
  ),
  Question(
    text: "When was Street Fighter created?",
    options: [
      Option(code: 'A', text: '1950', isCorrect: false),
      Option(code: 'B', text: '1887', isCorrect: false),
      Option(code: 'C', text: '1974', isCorrect: false),
      Option(code: 'D', text: '1987', isCorrect: true),
    ],
    solution: "Answer: 1987",
  ),
];
