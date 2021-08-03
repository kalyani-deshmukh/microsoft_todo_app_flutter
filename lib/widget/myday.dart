

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:to_do/models/item.dart';
import 'package:to_do/popmenubutton.dart';
import 'package:to_do/providers/item_list_provider.dart';

class MyDay extends StatelessWidget {
  //static final String routeName='/myday';
  @override
  Widget build(BuildContext context) {
    final _controller= useTextEditingController();
    
    return Scaffold(
      appBar: AppBar(title: Text('My Day'),
      iconTheme: IconThemeData(color: Colors.black),
        //backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          MyPopupButton()
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              labelText: 'Add Task' ),
              onSubmitted: (value){
                context.read(itemListProvider.notifier).addItem(
                  Item(name: value),
                  );

                  _controller.clear();
              },
          ),
          Expanded(
            child: Consumer
            (builder: (context,watch,child){
              final itemList = watch(itemListProvider);
          
              return ListView.builder(
                itemCount: itemList.length,
                itemBuilder:(context,index){
          
                  final Item item=itemList[index];
          
                  return Dismissible(
                    key: ValueKey(item.id),
                    onDismissed:(direction){
                      context.read(itemListProvider.notifier)
                      .deleteItem(item);
                    },
                    child: CheckboxListTile(
                      value: item.isDone,
                      title:Text(item.name),
                     onChanged: (value){
                       context
                       .read(itemListProvider.notifier)
                       .updateItem(item..isDone=value??false);
                     },
                     ),
                  );
              }
              );
          
            }
            ),
          )
        ],
        ),
        
    );
  }

  useTextEditingController() {}
}