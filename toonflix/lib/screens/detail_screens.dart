import 'package:flutter/material.dart';

class DetailScreens extends StatelessWidget {
  final String id, title, thumb;

  const DetailScreens({super.key,
  required this.id,
  required this.title,
  required this.thumb});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        centerTitle:true,
        title: Text(title, style: TextStyle(
          fontSize: 24,
        ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
        ],
      ),
      );
  }
}