import 'package:flutter/material.dart';


class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);

  final List<String>? orderImage = [
    'https://rukminim1.flixcart.com/image/416/416/k73nlow0/headphone/h/9/z/boat-rockerz-370-original-imafpef5cszgwxmx.jpeg?q=70',
    'https://rukminim1.flixcart.com/image/416/416/k7285u80/headphone/4/3/u/boat-rockerz-370-original-imafpdzhywghfabu.jpeg?q=70',
    'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTNrUDtvxQURbBLkLTpu7TSai0nLRbdC7bslPb3-9k4IZQe7D4Xp-3t6Q90loYrN5esd4Xqkz2j-Enf&usqp=CAc',
  ];

  final List<String>? orderProductName = [
    'Boat Rockers 510',
    'Boat Rockers 510',
    'Boat Rockers 510',
    
  ];

  final List<String>? orderProductPrice = [
    '2000',
    '1000',
    '1700',
  ];

  final List<String>? orderId = [
    '#010321',
    "#023671",
    '#082821',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Orders'),
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView.separated(
                separatorBuilder: (context, index) => const SizedBox(height: 10,),
                itemCount: orderId!.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Container(
                        width: 200,
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 50),
                              child: Row(
                                children: [
                                  Container(
                                    height: 90,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                    child: Image.network(
                                      "${orderImage![index]}",
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Order id : ${orderId![index]}'),
                                      Text('${orderProductName![index]}'),
                                      Text('₹${orderProductPrice![index]}'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Divider(
                              thickness: 1,
                              color: Colors.red,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        // ignore: deprecated_member_use
                                        primary:
                                            const Color.fromARGB(255, 12, 139, 55),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {},
                                    child: const Text(
                                      'Accept Order',
                                      style: TextStyle(color: Colors.white),
                                    )),
                               const SizedBox(width: 40,),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        // ignore: deprecated_member_use
                                        primary: const Color(0xffdd0021),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    onPressed: () {
                                      // Navigator.pop(context);
                                    },
                                    child: const Text(
                                      'Reject Order',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ))));
  }
}
