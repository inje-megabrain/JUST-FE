import 'package:flutter/material.dart';

class UserProfileCard extends StatefulWidget {
  const UserProfileCard({super.key});

  @override
  State<UserProfileCard> createState() => _UserProfileCardState();
}

class _UserProfileCardState extends State<UserProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 48, 48, 48),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4.0,
        ),
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/test1.jpg'),
                ),
                const SizedBox(width: 16.0),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '통통한 너구리',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        '@asdflel123d',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                IconButton(
                  icon: const Icon(
                    Icons.edit,
                    size: 20,
                  ),
                  onPressed: () {
                    // 이름 수정 페이지로 이동하는 코드 작성
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
