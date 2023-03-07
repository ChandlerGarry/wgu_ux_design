import 'package:flutter/material.dart';
import 'package:wgu_ux_design/widgets/navbar.dart';
import 'package:wgu_ux_design/widgets/title_header.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage('assets/tahiti_mountain1.jpg'),
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
                const NavBar(),
                Column(
                  children: [
                    // TITLE AND SUBTITLE
                    const TitleHeader(title: 'FREQUENTLY ASKED QUESTIONS'),
                    // (padding between title & header)
                    const SizedBox(height: 30.0),
                    const SubtitleHeader(
                      subtitle:
                          'We know you have questions. Find everything you need to know about beautiful Taniti.',
                    ),

                    // BODY
                    Stack(
                      children: [
                        Container(
                          color: Colors.white.withOpacity(0.4),
                          child: Column(
                            children: const [
                              FaqRow(
                                question: 'What voltage are power outlets?',
                                answer:
                                    'Power outlets are 120 volts (the same as in the United States, Mexico and Canada).',
                              ),
                              FaqRow(
                                question: 'What is the drinking age in Taniti',
                                answer:
                                    'While the drinking age in Taniti is currently 18, and the drinking age is not strictly enforced, alcohol is not to be sold between the hours of 12am and 9am.',
                              ),
                              FaqRow(
                                question:
                                    'I only brought U.S. dollars, will that be an issue?',
                                answer:
                                    'Taniti uses the U.S. dollar as its currrency. Many businesses also accept euros and yen, and several banks on the island facilitate currency exchange. Alternatively, many businesses now accept most major credit cards.',
                              ),
                              FaqRow(
                                question: 'What voltage are power outlets',
                                answer:
                                    'Power outlets are 120 volts (the same as in the United States, Mexico and Canada).',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class FaqRow extends StatelessWidget {
  final String question;
  final String answer;
  const FaqRow({super.key, required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    // FAQ TEXTSTYLE
    const TextStyle faqStyle = TextStyle(
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 20.0),
      child: Row(
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question,
                  style: faqStyle,
                ),
                const SizedBox(height: 12.0),
                Text(
                  '+  $answer',
                  style: faqStyle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
