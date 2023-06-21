import 'package:figma/provider/screens/RestApi/get_provider.dart';
import 'package:figma/provider/screens/RestApi/models/PetsModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class PetsScreen extends StatefulWidget {
  const PetsScreen({super.key});

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<Getproductprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("get Pets Data"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: provider.isLoading ? 
      getLoadingUi()
      :provider.Error.isNotEmpty
      ?getErrorUi(provider.Error)
      :getBodyUi(provider.pets),
    );
  }
  
  Widget getLoadingUi() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
        CircularProgressIndicator(
          color: Colors.blue,
          
        ),
     const Text("Loading",style: TextStyle(color: Colors.blue,fontSize: 30.0),)
      ]),
    );
  
  }
  
  Widget getErrorUi(String error) {
    return Center(
      child: Text(error,style: TextStyle(color: Colors.red,fontSize: 24.0),),
    );
  }

  Widget getBodyUi(Pets pets) {
    return ListView.builder(
      itemCount: pets.data.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(pets.data[index].userName),
          subtitle: Text(pets.data[index].petName),
        );
      },
    );
  }
}