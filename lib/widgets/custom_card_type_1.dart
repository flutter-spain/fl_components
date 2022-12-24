import 'package:flutter/material.dart';
import '../themes/app_theme_indigo.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
          children: [
            const ListTile(
              leading: Icon( Icons.album, color: AppThemeIndigo.primaryColor),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                  mainAxisAlignment : MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text('Cancelar'),
                      onPressed: () { /* ... */ },
                    ),
                    TextButton(
                      child: Text('Ok'),
                      onPressed: () { /* ... */ },
                    ),
                  ],
              ),
            )
          ],
      )
    );
  }
}