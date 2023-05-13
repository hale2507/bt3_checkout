import 'package:bt3_checkout/style/color.dart';
import 'package:bt3_checkout/style/style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CheckOutPage(),
    );
  }
}

class CheckOutPage extends StatefulWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  _CheckOutPage createState() => _CheckOutPage();
}

class _CheckOutPage extends State<CheckOutPage> {
  final TextEditingController _date = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Text(
                    "CART",
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade700),
                  )),
              Container(
                  margin: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.secondaryBackground,
                  ),
                  width: 370,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Recipient details", style: AppStyle.bodyText2),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Your name',
                          ),
                          controller: TextEditingController(text: "ABCD"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Your phone number',
                          ),
                          controller: TextEditingController(text: "0123456789"),
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 25,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.secondaryBackground,
                  ),
                  width: 370,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Delivery information", style: AppStyle.bodyText2),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: UnderlineInputBorder(),
                            labelText: 'Your address',
                          ),
                          controller: TextEditingController(text: "Viet Nam"),
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 25,
              ),
              Container(
                  margin: const EdgeInsets.only(left: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.secondaryBackground,
                  ),
                  width: 370,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Delivery date", style: AppStyle.bodyText2),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 16),
                        child: TextField(
                          controller: _date,
                          decoration: const InputDecoration(
                              icon: Icon(Icons.calendar_today_rounded),
                              labelText: 'Select date'),
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100));
                            if (pickeddate != null) {
                              setState(() {
                                _date.text =
                                    DateFormat('yyyy-MM-dd').format(pickeddate);
                              });
                            }
                          },
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(left: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.secondaryBackground,
                ),
                width: 370,
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Cart summary', style: AppStyle.bodyText2),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Subtotal",
                                  style: AppStyle.subtitle2,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Delivery",
                                  style: AppStyle.subtitle2,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Cart Subtotal",
                                  style: AppStyle.subtitle2,
                                ),
                              ]),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width: 100,
                          child: Column(children: [
                            Text(
                              "\$50",
                              style: AppStyle.subtitle2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$15",
                              style: AppStyle.subtitle2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              "\$65",
                              style: AppStyle.subtitle2,
                            ),
                          ]),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        height: 50.0,
                        color: AppColors.secondaryColor,
                        child: Text(
                          "Secure Checkout".toUpperCase(),
                          style: const TextStyle(color: Colors.white),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
