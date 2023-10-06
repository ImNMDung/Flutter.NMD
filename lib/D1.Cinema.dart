import 'package:flutter/material.dart';

class MyCinema extends StatelessWidget {
  const MyCinema({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cinema",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: PageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          pageSnapping: true,
          itemBuilder: (context, pagePosition) {
            List<String> imagePaths = [
              "assets/images/anh-duong-sau-hoang-hon.jpg",
              "assets/images/nhan-duyen-tien-dinh1.jpg",
              "assets/images/the-nun-ii.jpg",
            ];

            List<String> textPaths = [
              "Ánh Dương Sau Hoàng Hôn",
              "Nhân Duyên Tiền Đình",
              "The Nun II",
            ];

            int index1 = pagePosition % textPaths.length;
            int index = pagePosition % imagePaths.length;
            return Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Image.asset(
                      imagePaths[index],
                      width: 300,
                    ),
                  ),
                  Text(
                    textPaths[index1],
                    style: TextStyle(
                      fontSize: 16, // Đặt kích thước chữ
                      fontWeight: FontWeight.bold, // Đặt độ đậm của chữ
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
