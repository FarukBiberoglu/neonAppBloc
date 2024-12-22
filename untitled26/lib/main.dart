import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled26/sayacCubit.dart';
import 'package:untitled26/secondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>SayacCubit()),
      ],
      child: MaterialApp(
        home: Anasayfa(),
      ),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<SayacCubit,int>(
                builder:(context,sayacDegeri){
                  return
                    Text('$sayacDegeri',style:
                    TextStyle
                      (fontSize: 22,fontWeight: FontWeight.bold,),);

            } ),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => secondPage(),));
            }, child:Text('Geçiş Yap'))
          ],
        ),
      ),
    );
  }
}
