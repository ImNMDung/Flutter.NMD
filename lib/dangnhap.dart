import 'package:flutter/material.dart';
import 'package:flutter_application_2/trangchu.dart';

class Dangnhap extends StatelessWidget {
  const Dangnhap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Màu nền của AppBar
        title: const Text(
          'TFT Mobile',
          style: TextStyle(
            color: Colors.white, // Màu chữ của tiêu đề
            fontSize: 24, // Kích thước chữ
            fontWeight: FontWeight.bold, // Độ đậm của chữ
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white, // Màu biểu tượng
            ),
            onPressed: () {
              // Thêm mã xử lý khi nút tìm kiếm được bấm
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white, // Màu biểu tượng
            ),
            onPressed: () {
              // Thêm mã xử lý khi nút cài đặt được bấm
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
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
            // Row(
            //   children: [
            //     IconButton(
            //       icon: Icon(
            //         Icons.home,
            //         color: Colors.black,
            //         size: 50,
            //       ),
            //       onPressed: () {
            //         print('''Bạn Đã Bị
            //         Hack
            //         90%''');
            //         var snackBar =
            //             new SnackBar(content: Text("Hack THành Công"));
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       },
            //     ),
            //     IconButton(
            //       icon: Icon(
            //         Icons.home,
            //         color: Colors.black,
            //         size: 50,
            //       ),
            //       onPressed: () {
            //         print('''Bạn Đã Bị
            //         Hack
            //         90%''');
            //         var snackBar =
            //             new SnackBar(content: Text("Hack THành Công"));
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       },
            //     ),
            //     IconButton(
            //       icon: Icon(
            //         Icons.account_box,
            //         color: Colors.black,
            //         size: 50,
            //       ),
            //       onPressed: () {
            //         print('''Bạn Đã Bị
            //         Hack
            //         90%''');
            //         var snackBar =
            //             new SnackBar(content: Text("Hack THành Công"));
            //         ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //       },
            //     ),
            //   ],
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // )
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
    );
  }
}
