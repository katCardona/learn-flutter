  import 'package:flutter/material.dart';


  class CounterFunctionsScreen extends StatefulWidget {

    
    const CounterFunctionsScreen({super.key});

    @override
    State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
  }

  class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text('Counter functions',),
        actions: [
          IconButton(
          icon: Icon( Icons.refresh_rounded), 
          onPressed: () { 
            setState(() {
              clickCounter = 0;
              
            });

          }),

        ],
        ),      
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text('$clickCounter', 
                style: TextStyle( fontSize: 160, fontWeight: FontWeight.w100)),

                Text('Click${ clickCounter == 1? '':'s'}', style: TextStyle( fontSize: 25))
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomBotton(
                icon: Icons.refresh_rounded,
                onPressed: (){
                    clickCounter =0;
                    setState(() {});      
                  }
                ),
            const SizedBox( height: 10,),
              CustomBotton(
                icon: Icons.exposure_minus_1_outlined,
                onPressed: (){
                  clickCounter --;
                    setState(() {});
                },
                ),

              SizedBox( height: 10,),
              CustomBotton(icon: Icons.plus_one,
              onPressed: (){
                  clickCounter ++;
                    setState(() {});
            },
          ),
        ],
      ));
    }
  }

  class CustomBotton extends StatelessWidget {

    final IconData icon;
    final VoidCallback? onPressed;

    const CustomBotton({
      super.key, 
        required this.icon,
        this.onPressed,     
    });

    @override   
    Widget build(BuildContext context) {
      return FloatingActionButton( 
        enableFeedback: true,
          shape: StadiumBorder(),
            onPressed: onPressed,
        child: Icon(icon),  
      );
    }
  }