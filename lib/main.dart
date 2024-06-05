
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Bosh sahifa', style: TextStyle(color: Colors.lightBlueAccent),),
            backgroundColor: Color(0xFF1B1725 ),
            centerTitle: true,
          ),
          body:
          // screens[currentIndex],

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Jahon Soliyev"),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://avatar.iran.liara.run/public/18"),
                radius: 50,
              ),

              SizedBox(height: 15),
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.green)
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue)
                    )
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    String text = controller1.text;
                    controller2.text = "Jahon sizga sizga salom yo'llaydi $text";
                  });
                },
                child: Text("Yuborish"),

              ),
              SizedBox(height: 12),
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.green)
                    ),
                    enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue)
                    )
                ),
              ),
            ],
          ),

          bottomNavigationBar:
          Theme(
            data: ThemeData(
              canvasColor: Color(0x1B1725),
            ),
            child: BottomNavigationBar(
              backgroundColor: Color(0xFF1B1725),
              fixedColor: Colors.white,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              iconSize: 27,

              currentIndex: currentIndex,
              onTap: (index){
                setState(() {
                  currentIndex = index;
                });
              },
              type:
              BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.lightBlueAccent,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),

                  label: "Home",
                ),
                BottomNavigationBarItem(
                  // title : Text("Sevimlilar"),
                  icon: Icon(Icons.wallet),
                  label: "Wallet",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: "Chat",
                ),
              ],
            ),
          ),
        )
    );
  }
}
