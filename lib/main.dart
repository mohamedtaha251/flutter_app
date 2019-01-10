import 'package:flutter/material.dart';
import './DetailedScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange, accentColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: getListView(),
          floatingActionButton: new FloatingActionButton(
              elevation: 0.0,
              child: new Icon(Icons.add),
              tooltip: 'Add one More Item',
              backgroundColor: Colors.deepOrange,
              onPressed: (){

              }
          )
      ),
    );
  }
}

void showSnackBar(BuildContext context,String item)
{
  var snackbar=SnackBar(content: Text("you just tapped $item"));
  Scaffold.of(context).showSnackBar(snackbar);
}

void openDetailedScreen(BuildContext context)
{
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => DetailedScreen()),
  );
}

List<String> getListItem()
{
  return List<String>.generate(1000, (counter)=>"Item$counter");
}

Widget getListView(){
  var listItems=getListItem();
  var listView=ListView.builder(
    itemBuilder: (context,index){
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
      onTap: () {
        showSnackBar(context,listItems[index]);
        //openDetailedScreen(context);

      },
      );
    }
  );
return listView;
}
