import 'package:flutter/material.dart';
import 'package:toonflix/screens/detail_screens.dart';

class Webtoon extends StatelessWidget {

  final String id, title, thumb;

  const Webtoon({super.key,
  required this.title,
  required this.thumb,
  required this.id
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (context) => 
            DetailScreens(
              id: id,
              title: title, 
              thumb: thumb
              ),
            )
          );
      },
      child: Column(
                  children: [
                    Hero(
                      tag: id,
                      child: Container(
                        width: 250,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(
                            blurRadius: 15,
                            offset: Offset(10, 10),
                            color: Colors.black.withOpacity(0.5),
                          ),
                                        ]),
                        child: Image.network(
                          thumb,
                          headers: const {"User-Agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36",},
                      ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(title, style: const TextStyle(fontSize: 22,),)
                  ],
                ),
    );
  }
}