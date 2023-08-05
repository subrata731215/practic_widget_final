import 'package:flutter/material.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE4DABB),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 90,
              width: 90,
              image: AssetImage('assets/visva_logo.jpg'),
            ),
            const SizedBox(
              width: 20,
            ),
            Card(
              color: const Color(0xffE4DABB),
              elevation: 20,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                      )
                    ]),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                child: const Text(
                  'Visva-Bharati - IQAC',
                  style: TextStyle(
                    color: Color(0xff3F0019),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DownLeftWidget extends StatelessWidget {
  const DownLeftWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffE4E1DE),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const LeftWidget(text: 'Home'),
              const LeftWidget(text: 'Composition'),
              const LeftWidget(text: 'Meetings & Proceedings'),
              const LeftWidget(text: 'Curriculum'),
              const LeftWidget(text: 'Research'),
              const LeftWidget(text: 'Best Practices'),
              const LeftWidget(text: 'Distinctiveness'),
              const LeftWidget(text: 'Maintenance'),
              const LeftWidget(text: 'Best Initiatives'),
              const LeftWidget(text: 'NAAC'),
              const LeftWidget(text: 'AQAR'),
              const LeftWidget(text: 'Feedback'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: const Color(0xffE4DABB),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'IQAC, Visva-Bharati, Santiniketan 731235, Birbhum, West Bengal, IndiaEmail: coordinator.iqac@visva-bharati.ac.inPhone:'
                      ' 9434432514Published by Director, IQAC, Visva-Bharati on 26/10/2020Site created & maintained by Visva-Bharati Computer Centre© Visva-Bharati IQAC 2020',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 9),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeftWidget extends StatelessWidget {
  const LeftWidget({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xffE4DABB),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 8),
      )),
    );
  }
}

class DownRightWidget extends StatelessWidget {
  const DownRightWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xffE4E1DE),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.grey)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                color: const Color(0xffE4DABB),
                elevation: 10,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    //border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE4DABB),
                  ),
                  child: const Text(
                    'INTERNAL QUALITY ASSURANCE CELL',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 8),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12),
              child: Text(
                'In compliance with the requirement of quality enhancement and maintenance of performance in terms of the aims and objective of the higher educational institute, National '
                'Assessment and Accreditation Council (NAAC) suggested to establish Internal Quality Assurance Cell (IQAC) in each and every Higher Educational Institute. In an academic institute like University,'
                ' IQAC plays a significant role in maintaining standard related to academic quality of programmes and human resources involved. NAAC explains that it is the prime responsibility of IQAC to promote'
                ' and initiate, plan and supervise various activities to enrich the quality of the education. The IQAC of Visva-Bharati was set up on 25th January, 2011 and it has mended the institute to reach a quality'
                ' standard through a number of initiatives and NAAC assessment.The IQAC imparts great role towards meaningful contribution during the post-accreditation phase of the institution. During this period,'
                ' the IQAC channelizes the efforts and takes up quality measures on a strategic way to promote the institution towards academic excellence.',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 10),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DownRightDownText(
                  downRightText: 'Notifications',
                ),
                DownRightDownText(
                  downRightText: 'Forms',
                ),
                DownRightDownText(
                  downRightText: 'Guidelines',
                ),
                DownRightDownText(
                  isUnderLine: false,
                  downRightText: 'Archives',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DownRightDownText extends StatelessWidget {
  const DownRightDownText({
    super.key,
    required this.downRightText,
    this.isUnderLine = true,
  });

  final String downRightText;
  final bool? isUnderLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      downRightText,
      style: isUnderLine == true
          ? const TextStyle(
              fontSize: 8,
              color: Colors.blue,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold)
          : const TextStyle(
              fontSize: 8,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
    );
  }
}
