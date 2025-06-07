import 'package:all_in_one/Providers/Random%20User%20Provider/random_user_provider.dart';
import 'package:all_in_one/Screens/Random%20User%20Screens/random_user_details_screen.dart';
import 'package:all_in_one/Widgets/Random%20User%20Customs/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RandomUserScreen extends StatelessWidget {
  const RandomUserScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<RandomUserProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("Random User App"),),
      body: Column(
        children: [
          Expanded(
            child: Consumer<RandomUserProvider>(builder: (context, value, child) {
              var data = value.randomUserModel;
              if(data == null){
                value.getAllUsersProv();
                return Center(child: CircularProgressIndicator(),);
              }
              else{
                return ListView.builder(
                  itemCount: data.Users.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RandomUserDetailsScreen(
                          img: data.Users[index]['picture']['large'],
                          gender: data.Users[index]['gender'],
                          phone: data.Users[index]['phone'],
                          age: data.Users[index]['dob']['age'],
                          country: data.Users[index]['location']['country'],
                          state: data.Users[index]['location']['state'],
                          email: data.Users[index]['email'],
                          title: data.Users[index]['name']['title'],
                          first: data.Users[index]['name']['first'],
                          last: data.Users[index]['name']['last']),));
                    },
                    child: CustomCard(
                        gender: data.Users[index]['gender'],
                        img: data.Users[index]['picture']['large'],
                        phone:  data.Users[index]['phone'],
                        name:  data.Users[index]['name']['first'],
                        email:  data.Users[index]['email']),
                  ),);
              }
            },),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {
                  prov.getUsersProv(Gender: "male");
                }, child: Text("Male")),
                ElevatedButton(onPressed: () {
                  prov.getUsersProv(Gender: "female");
                }, child: Text("Female")),
                ElevatedButton(onPressed: () {
                  prov.getAllUsersProv();
                }, child: Text("Refresh")),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
