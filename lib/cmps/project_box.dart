import 'package:flutter/material.dart';

class ProjectBox extends StatelessWidget {
  final String title;
  const ProjectBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(235, 235, 235, 0.5),
      ),
      child: ListTile(
        leading: const Icon(
          Icons.folder,
          color: Color.fromARGB(255, 89, 180, 255),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.more_vert_outlined),
      ),
    );
  }
}
