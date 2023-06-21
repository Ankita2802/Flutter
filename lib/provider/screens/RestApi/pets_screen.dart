import 'package:figma/provider/screens/RestApi/get_provider.dart';
import 'package:figma/provider/screens/RestApi/models/petsModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
class PetsScreen extends StatefulWidget {
  const PetsScreen({super.key});

  @override
  State<PetsScreen> createState() => _PetsScreenState();
}

class _PetsScreenState extends State<PetsScreen> {
  @override
  void initState() {
    final provider=Provider.of<Getproductprovider>(context,listen: false);
    provider.GetDatafromApi();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<Getproductprovider>(context,listen: false);
    // provider.GetDatafromApi();
    return Scaffold(
      appBar: AppBar(
        title: const Text("get Pets Data"),
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
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children:[
        CircularProgressIndicator(
          color: Colors.blue,
          
        ),
      Text("Loading",style: TextStyle(color: Colors.blue,fontSize: 30.0),)
      ]),
    );
  
  }
  
  Widget getErrorUi(String error) {
    return Center(
      child: Text(error,style: const TextStyle(color: Colors.red,fontSize: 24.0),),
    );
  }

  Widget getBodyUi(Pets pets) {
    return ListView.builder(
      itemCount: pets.data.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 22,
            backgroundImage: NetworkImage(pets.data[index].petImage),
            backgroundColor: Colors.white,
          ),
          title: Text(pets.data[index].userName),
          subtitle: Text(pets.data[index].petName),
          trailing: pets.data[index].isFriendly?const SizedBox():const Icon(Icons.pets,color: Colors.red,),
        );
      },
    );
  }
}