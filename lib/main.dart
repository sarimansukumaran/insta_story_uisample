import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List myDataList = [
      {
        "name": "sarima__sarima",
        "dp":
            "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg": "assets/images/1718370374242-01.jpeg"
      },
      {
        "name": "john",
        "dp":
            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg": "assets/images/Zoro.jpeg",
      },
      {
        "name": "emma",
        "dp":
            "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg": "assets/images/IMG_20210124_093902.jpg",
      },
      {
        "name": "michael",
        "dp":
            "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg": "assets/images/IMG_20201121_113934.jpg",
      },
      {
        "name": "lucy",
        "dp":
            "https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "bg": "assets/images/IMG_20201014_111440.jpg",
      }
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: PageView.builder(
            itemCount: myDataList.length,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(myDataList[index]["bg"]),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(myDataList[index]["dp"]),
                    ),
                    title: Text(
                      myDataList[index]["name"],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "song..",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            "Send Message",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.favorite_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.send_outlined,
                        color: Colors.white,
                        size: 40,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
