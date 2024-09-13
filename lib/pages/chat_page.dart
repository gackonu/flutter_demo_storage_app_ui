import 'package:flutter/material.dart';
import 'package:storage_app/cmps/person_card.dart';
import 'package:storage_app/cmps/project_box.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          color: const Color.fromRGBO(235, 235, 235, 0.5),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chatbox',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Project',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(182, 189, 196, 0.2),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.search,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(182, 189, 196, 0.2),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.share_outlined,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          alignment: Alignment.centerLeft,
          height: 130,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: const [
              PersonCard(name: 'Mike', image: 'assets/images/1.jpg'),
              SizedBox(
                width: 10,
              ),
              PersonCard(name: 'James', image: 'assets/images/2.jpg'),
              SizedBox(
                width: 10,
              ),
              PersonCard(name: 'Ethel', image: 'assets/images/3.jpg'),
              SizedBox(
                width: 10,
              ),
              PersonCard(name: 'Frank', image: 'assets/images/4.jpg'),
              SizedBox(
                width: 10,
              ),
              PersonCard(name: 'Fati', image: 'assets/images/5.jpg'),
              SizedBox(
                width: 10,
              ),
              PersonCard(name: 'Pedri', image: 'assets/images/6.jpg'),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: const [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Files',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text(
                    'Create new',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ProjectBox(
                title: 'Chat Box',
              ),
              ProjectBox(
                title: 'DCIM',
              ),
              ProjectBox(
                title: 'Lamda Pro',
              ),
              ProjectBox(
                title: 'AWS',
              ),
              ProjectBox(
                title: 'Cellular',
              ),
              ProjectBox(
                title: 'Hero 2.0',
              ),
              ProjectBox(
                title: 'Funny Pack',
              ),
              ProjectBox(
                title: 'Doom Syndicate',
              ),
              ProjectBox(
                title: 'Rest',
              ),
            ]),
          ),
        )
      ],
    );
  }
}
