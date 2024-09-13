import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:storage_app/cmps/project_box.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  double availableScreenWidth = 0;

  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 170,
            color: Colors.blue.shade800,
            padding: const EdgeInsets.all(25),
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Riotters',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Team Folder',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 25,
          // ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Storage ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        children: [
                          TextSpan(
                            text: '9.1/10GB',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Color.fromARGB(255, 117, 117, 117),
                                fontSize: 22),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Upgrade',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: availableScreenWidth * .3,
                          height: 5,
                          decoration: const BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3),
                                  bottomLeft: Radius.circular(3))),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('SOURCES',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: availableScreenWidth * .15,
                          height: 5,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 145, 66, 52),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('DOCS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: availableScreenWidth * .25,
                          height: 5,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 243, 202, 22),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'IMAGES',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: availableScreenWidth * .3,
                          height: 5,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 182, 189, 196),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(3),
                                bottomRight: Radius.circular(3)),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text('')
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView(children: [
                Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: const Text(
                        'Recently updated',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(190, 190, 190, 0.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child:
                                  SvgPicture.asset('assets/images/desktop.svg'),
                            ),
                            const Text.rich(
                              TextSpan(
                                text: 'desktop',
                                children: [
                                  TextSpan(
                                    text: '.sketch',
                                    style: TextStyle(
                                      color: Color.fromRGBO(190, 190, 190, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(190, 190, 190, 0.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child:
                                  SvgPicture.asset('assets/images/mobile.svg'),
                            ),
                            const Text.rich(
                              TextSpan(
                                text: 'mobile',
                                children: [
                                  TextSpan(
                                    text: '.pdf',
                                    style: TextStyle(
                                      color: Color.fromRGBO(190, 190, 190, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(30),
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(190, 190, 190, 0.2),
                                  borderRadius: BorderRadius.circular(15)),
                              child: SvgPicture.asset(
                                  'assets/images/cellular.svg'),
                            ),
                            const Text.rich(
                              TextSpan(
                                text: 'network',
                                children: [
                                  TextSpan(
                                    text: '.mp4',
                                    style: TextStyle(
                                      color: Color.fromRGBO(190, 190, 190, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Projects',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        Text(
                          'Create New',
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const Column(
                      children: [
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
                      ],
                    )
                  ],
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
