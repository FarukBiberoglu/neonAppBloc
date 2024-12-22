import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled26/sayacCubit.dart';

class secondPage extends StatelessWidget {
  const secondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder<SayacCubit,int>(builder: (context, sayacDegeri) {
              return Text('$sayacDegeri',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),);

            },),

            ElevatedButton(onPressed: () {
            context.read<SayacCubit>().sayaciArttir();
            }, child:Text('Sayaç Arttır')),
            ElevatedButton(onPressed: () {
              context.read<SayacCubit>().sayacAzalt(1);

            }, child:Text('Sayaç Azalt')),

          ],
        ),
      ),
    );
  }
}
