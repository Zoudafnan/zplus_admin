import 'package:admian_app/add_items/widgets/add_image.dart';
import 'package:admian_app/add_items/widgets/form_input.dart';
import 'package:admian_app/constant_widgets/custom_button_red.dart';
import 'package:flutter/material.dart';

class ItemForm extends StatefulWidget {
  const ItemForm({Key? key}) : super(key: key);

  @override
  _ItemFormState createState() => _ItemFormState();
}

class _ItemFormState extends State<ItemForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String dropDownValue = 'Starters';
  var items = [
    'Starters',
    'Roti',
    'Chinese',
    'Dinner',
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 8, right: 8, bottom: 10),
        child: Form(
          key: _globalKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const FormInput(
              text: Text(
                "Item Name",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              hintText: "Enter item name",
              maxLine: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            const FormInput(
              text: Text(
                "Item Description",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
              ),
              hintText: "Enter item description...",
              maxLine: 5,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Item Category",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  isExpanded: true,
                  value: dropDownValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropDownValue = newValue!;
                    });
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            const AddImage(),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButtonRed(
                    inputText: "Submit",
                    font: 15,
                    height: 35,
                    width: 150,
                    onPressed: () {
                      final isValid = _globalKey.currentState!.validate();
                      if (isValid) {
                        setState(() {
                          final snackBar = SnackBar(
                            duration: const Duration(seconds: 5),
                            content: const Text("Item added"),
                            action: SnackBarAction(
                              label: 'View menu',
                              onPressed: () {
                                Navigator.pushNamed(context, '/menuItems');
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        });
                      }
                    }),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
