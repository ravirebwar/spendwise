import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spendwise/models/expense.dart';
import 'package:spendwise/widgets/expense_list.dart';
import 'package:spendwise/widgets/expense_tile.dart';
import 'package:spendwise/widgets/summary_card.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: const Text('SpendWise'),
      actions: [
        IconButton(
          icon:const Icon(Icons.settings),
          onPressed: (){
            print('Settings tapped');
          }, )
      ],
    ),
    body: LayoutBuilder(
      builder: (context, constraints){    
      final card = SummaryCard(total: totalOf(sampleExpenses));
      final list = ExpenseList(expenses: sampleExpenses);
      if(constraints.maxWidth < 600){

      
      return Column(
        children: [card, Expanded(child: list)],
      );}

      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(width: 360,child: card,),
        Expanded(child: list)
        ],
      );
    }),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                print('Add tapped');
              },
              child: const Icon(Icons.add),
            ),
          );

   
  
}}