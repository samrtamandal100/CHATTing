import 'package:chater/Group/tabs_of_group/created.dart';
import 'package:flutter/material.dart';

class GroupsJoined extends StatefulWidget {
  const GroupsJoined({super.key});

  @override
  State<GroupsJoined> createState() => _GroupsJoinedState();
}

class _GroupsJoinedState extends State<GroupsJoined> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context,index){
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.only(top: 20),
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
         children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network('https://img.freepik.com/premium-vector/gorilla-black-background-closeup-yellow-lighting-jungle-zoo-strength-screams-leader-king-growl-dangerous-fangs-hunter-monkey-muscular-wild-artistic-concept-vector-illustration_748571-707.jpg?size=626&ext=jpg&ga=GA1.1.226192698.1699884517&semt=ais'),
            ),
          const SizedBox(
            width: 10,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("The Illustration",style: TextStyle(fontWeight: FontWeight.bold,),),
              Text("Art Group", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),maxLines: 2,)
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: 60,
            child: ElevatedButton(
             onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GroupsCreated()));
             }, 
             child: const Text("open",)
            ),
          )
         ],
        ),
      );
    });
  }
}