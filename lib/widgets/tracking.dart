import 'package:flutter/material.dart';
import 'package:moniepiont/add_stop.dart';

class TrackingContainer extends StatelessWidget {
  const TrackingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 265,
      decoration: BoxDecoration(
          color: const Color(0xfff6f8f7),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, 2),
              spreadRadius: 0,
              blurRadius: 20,
              color: Color.fromRGBO(0, 0, 0, 0.1),
            )
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 15, 18, 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Shipment Number',
                          style:
                              TextStyle(color: Color(0xff858587), fontSize: 11),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'NEJ20089934122231',
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/craine.png',
                      width: 70,
                      height: 50,
                    )
                  ],
                ),
                const Divider(),
                const SenderReceiverContainer(
                  isGreen: true,
                  address: 'Atlanta, 5243',
                  duration: '2 day -3 days',
                  title: 'Sender',
                  type: 'Time',
                  color: const Color.fromARGB(134, 226, 128, 58),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SenderReceiverContainer(
                  isGreen: false,
                  address: 'Chicago, 6342',
                  duration: 'Waiting to collect',
                  title: 'Receiver',
                  type: 'Status',
                  color: Color.fromARGB(118, 76, 175, 79),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              width: 500,
              height: 0.5,
              color: const Color.fromARGB(190, 158, 158, 158)),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddStopScreen()),
              );
            },
            child: Container(
              width: 500,
              height: 45,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add_rounded,
                    color: Color(0xffe2803a),
                  ),
                  Text(
                    'Add Stop',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xffe2803a),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SenderReceiverContainer extends StatelessWidget {
  const SenderReceiverContainer(
      {super.key,
      required this.isGreen,
      required this.title,
      required this.address,
      required this.type,
      required this.duration,
      required this.color});
  final bool isGreen;
  final String title, address, type, duration;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 45,
              height: 45,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(50)),
              child: Image.asset(
                'assets/box.png',
                width: 30,
                height: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      const TextStyle(color: Color(0xff858587), fontSize: 11),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  address,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          width: 112,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                type,
                style: const TextStyle(color: Color(0xff858587), fontSize: 11),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  isGreen == true
                      ? Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      : const SizedBox(),
                  Text(
                    duration,
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
