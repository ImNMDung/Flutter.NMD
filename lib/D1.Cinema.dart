import 'package:flutter/material.dart';

class MyCinema extends StatelessWidget {
  const MyCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cinema", // Tiêu đề của thanh AppBar
          style: TextStyle(
            // Các thuộc tính về kiểu chữ của tiêu đề
            color: Colors.white,
            // Đặt màu chữ
          ),
        ),
        backgroundColor: Colors.blue, // Đặt màu nền cho AppBar
      ),
      body: Container(
          child: ListView.builder(
        scrollDirection: Axis.horizontal, // Đặt hướng cuộn là ngang
        itemCount: 10, // Số lượng ảnh
        itemBuilder: (BuildContext context, int index) {
          // Thay đổi đường dẫn hình ảnh tại đây
          String imagePath = 'assets/images/64a6e849233df607607280.jpeg';

          return Padding(
            padding: EdgeInsets.all(8.0), // Khoảng cách giữa các ảnh
            child: Image.asset(
              imagePath,
              width: 200.0, // Độ rộng ảnh (thay đổi theo nhu cầu)
              height: 200.0, // Chiều cao ảnh (thay đổi theo nhu cầu)
            ),
          );
        },
      )),
    );
  }
}
