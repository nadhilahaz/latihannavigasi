import 'package:flutter/material.dart';
import 'package:flutterbaru/ui_screen/dua/dua.dart';
import 'package:flutterbaru/ui_screen/satu/satu.dart';
import 'package:flutterbaru/ui_screen/tiga/tiga.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Expanded(
            //   child: Satu(),
            // ),
            // const Expanded(
            //   child: Dua(),
            // ),
            // const Expanded(
            //   child: Tiga(),
            // ),
            ElevatedButton(
              onPressed: () {
                print('ini print Satu');

                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Satu();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Satu",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print('Ini print Dua');
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Dua();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Dua",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                print('ini Print Tiga');
                final route = MaterialPageRoute(
                  builder: (context) {
                    return const Tiga();
                  },
                );
                Navigator.push(context, route);
              },
              child: const Text(
                "Tiga",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
