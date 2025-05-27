import 'package:flutter/material.dart';
import 'package:toonflix/widgets/button.dart';
import 'package:toonflix/widgets/currencycard.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    Text('Hey, Selena', 
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text('Welcome back',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18
                        ),
                    ),
                  ],
                  )
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white.withOpacity(0.8)),),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '\$5 194 382',
                    style: TextStyle(
                      fontSize: 44,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Button(text: 'Transfer', bgColor: const Color(0xFFF1B33B), textColor: Colors.black),
                        Button(text: 'Request', bgColor: const Color(0xFF1F2123), textColor: Colors.white),
                      ],
                    ),
                    const SizedBox(
                    height: 50,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Wallets', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.w600,),
                    ),
                    Text('View All', style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 18,
                    ),),
                  ],),
                  const SizedBox(
                    height: 20,
                  ),
                  const Currencycard(name: 'Euro', code: 'EUR', amount: '6 428', icon: Icons.euro_rounded, isInverted: false,),
                  Transform.translate(
                    offset: const Offset(0, -20),
                    child: const Currencycard(name: 'Bitcoin', code: 'BTC', amount: '9 785', icon: Icons.currency_bitcoin, isInverted: true,)),
                  Transform.translate(
                    offset: const Offset(0, -40),
                    child: const Currencycard(name: 'Dollar', code: 'USD', amount: '428', icon: Icons.attach_money_outlined, isInverted: false,)),
                  
                  ],
          ),
          ),
        ),
      ),
    );
  }

}