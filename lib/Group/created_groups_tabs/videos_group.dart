import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:readmore/readmore.dart';

class VideoGroup extends StatefulWidget {
  const VideoGroup({super.key});

  @override
  State<VideoGroup> createState() => _VideoGroupState();
}

class _VideoGroupState extends State<VideoGroup> {

  List<String> name = [
    'Ankit Mandal',
    'Samrat Sharma',
    'Sayan RoyGupta',
    'Indian',
    'Beddyuti',
    'Shyam',
    'Debashis Roy',
    'Chiranjit',
    'Shubho',
    'magruofmagru'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: name.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (ctx, index) {
          return Container(
            
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: const Color(0xffd9dddc)),
                color: Color(0xfffdfcfa)
                ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey.shade200,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${name[index]}',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Suggested',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.more_vert))
                    ],
                  ),
                ),

                //implement video out here  starts
                






                


                //implement video out here ends
                const SizedBox(width: 5,),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 5,
                  ),
                  child: ReadMoreText(
                    "A river begins on high ground or in hills or mountains and flows down from the high ground to the lower ground,"
                    " because of gravity. Mountain river is a river that runs usually in mountains, in narrow, deep valley with steep banks, rocky stream bed,"
                    "and accumulated rock debris.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Color(0xff000000)),
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "Show more",
                    trimExpandedText: "Show less",
                    moreStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff125488)),
                    lessStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff125488)),
                  ),
                ),
                //text of users will be displayed here ends

                Divider(
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LikeButtonFeed(),
                      CommentsFeed(),
                      ShareButtomFeed()
              ],
            ),
          )
          ]
          )
          );
        });
  }
}



class ShareButtomFeed extends StatelessWidget {
  const ShareButtomFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.arrowshape_turn_up_right_circle,
              color: Colors.grey.shade500,
              size: 25,
            )),
        const Text('Share', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff0d0d0d)),)
      ],
    );
  }
}

class CommentsFeed extends StatelessWidget {
  const CommentsFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.comment_bank_outlined),
          iconSize: 25,
          color: Colors.grey.shade500,
        ),
        // const SizedBox(width: 2,),
        const Text('Comments', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff0d0d0d)),)
      ],
    );
  }
}

class LikeButtonFeed extends StatelessWidget {
  const LikeButtonFeed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        LikeButton(
          likeCount: 0,
          size: 25,
        ),
        SizedBox(width: 2,),
        Text("Like", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Color(0xff0d0d0d)),)
      ],
    );
  }
}
