import 'package:flutter/material.dart';
import 'package:facebook/models/models.dart';
import 'package:facebook/widgets/widgets.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({super.key, 
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser.imageUrl),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                )
              ],
            ),
            const Divider(height: 10.0, thickness: 0.5),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => print('Live'),
                    child: Row(children: [
                      const Icon(
                        Icons.videocam,
                        color: Colors.red,
                      ),
                      Text('Live')
                    ]),
                  ),
                  const VerticalDivider(width: 8.0),
                  TextButton(
                    onPressed: () => print('Photo'),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.photo_library,
                          color: Colors.green,
                        ),
                        Text('Photo')
                      ],
                    ),
                  ),
                  const VerticalDivider(width: 8.0),
                  TextButton(
                    onPressed: () => print('Room'),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.video_call,
                          color: Colors.purpleAccent,
                        ),
                        Text('Room')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
