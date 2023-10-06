import 'package:flutter/material.dart';
import 'package:flutter_application_2/dangnhap.dart';
import 'package:flutter_application_2/trangchu.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red.shade300, Colors.red]),
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        )),
        title: const Text("Home"),
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const Icon(Icons.home),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'Setting',
                  child: Text('Setting'),
                ),
                const PopupMenuItem<String>(
                  value: 'About',
                  child: Text('About'),
                ),
              ];
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 10, // Khoảng cách 10px giữa TextField 2 và TextField 3
            ),
            Text(
              "Đăng Nhập",
              style: TextStyle(
                  color: Colors.red[800],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10, // Khoảng cách 10px giữa TextField 2 và TextField 3
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Tài Khoản'),
            ),
            const SizedBox(
              height: 40, // Khoảng cách 10px giữa TextField 2 và TextField 3
            ),
            const TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Mật Khẩu'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 50,
                    ),
                    onPressed: () {
                      print('''Bạn Đã Bị
                      Hack
                      90%''');
                      var snackBar =
                          const SnackBar(content: Text("Hack THành Công"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.home,
                      color: Colors.black,
                      size: 50,
                    ),
                    onPressed: () {
                      print('''Bạn Đã Bị
                      Hack
                      90%''');
                      var snackBar =
                          const SnackBar(content: Text("Hack THành Công"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.account_box,
                      color: Colors.black,
                      size: 50,
                    ),
                    onPressed: () {
                      print('''Bạn Đã Bị
                      Hack
                      90%''');
                      var snackBar =
                          const SnackBar(content: Text("Hack THành Công"));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                  ),
                ],
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 50),
                margin: const EdgeInsets.all(50),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    gradient: LinearGradient(
                        colors: [Colors.red.shade300, Colors.red]),
                    borderRadius: BorderRadius.circular(20))),
            const SizedBox(
              height: 50, // Khoảng cách 10px giữa TextField 2 và TextField 3
            ),
            ElevatedButton(
              onPressed: () {
                // Đặt mã xử lý khi nút được bấm ở đây
                var sackbar = const SnackBar(content: Text("Bấm Cái Nịt"));
                ScaffoldMessenger.of(context).showSnackBar(sackbar);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const trangchu()),
                );
              },
              child: const Text(' Đăng Nhập'),
            ),
          ],
          // crossAxisAlignment: CrossAxisAlignment.end,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue, // Màu nền của BottomAppBar
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                // Thêm mã xử lý khi nút Home được bấm
              },
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dangnhap()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.white),
              onPressed: () {
                // Thêm mã xử lý khi nút Settings được bấm
              },
            ),
          ],
        ),
      ),
    );
  }
}
