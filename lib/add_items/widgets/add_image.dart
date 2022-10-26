import 'package:admian_app/constants/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker_web/image_picker_web.dart';

class AddImage extends StatefulWidget {
  const AddImage({Key? key}) : super(key: key);

  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  bool imageAvailable = false;
  late Uint8List imageFile;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Item Image",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey),
              color: Colors.white,
            ),
            height: 300,
            child: Center(
                child: Stack(
              children: [
                Container(
                  width: 220,
                  height: 220,
                  color: Colors.white,
                ),
                Container(
                    width: 200,
                    height: 200,
                    color: AppColor.background,
                    child: imageAvailable
                        ? Image.memory(
                            imageFile,
                            fit: BoxFit.cover,
                          )
                        : const SizedBox()),
                Positioned(
                  top: 170,
                  right: 5,
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 20,
                    child: CircleAvatar(
                      backgroundColor: AppColor.background,
                      child: GestureDetector(
                        onTap: () async {
                          final image = await ImagePickerWeb.getImageAsBytes();
                          setState(() {
                            imageFile = image!;
                            imageAvailable = true;
                          });
                        },
                        child: const Icon(
                          Icons.image_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
