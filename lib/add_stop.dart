import 'package:flutter/material.dart';
import 'package:moniepiont/widgets/buttons.dart';
import 'package:moniepiont/widgets/search_screen.dart';

class AddStopScreen extends StatefulWidget {
  const AddStopScreen({super.key});

  @override
  State<AddStopScreen> createState() => _AddStopScreenState();
}

class _AddStopScreenState extends State<AddStopScreen> {
   bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/map.png'), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 420,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 80,
                        height: 5,
                        decoration: BoxDecoration(
                            color: const Color(0xfff7f7f7),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Address details',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                     const SizedBox(
                      height: 25,
                    ),
                    const AddressInputContainer2(hintText: 'Floor Unit or Number', iconData: Icons.home_work_outlined,),
                    const AddressInputContainer(hintText: 'Phone Number', iconData: Icons.perm_contact_cal_outlined,),
                    const AddressInputContainer(hintText: 'Name', iconData: Icons.mode_edit_outline_outlined,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                          activeColor: const Color(0xff47358d),
                          value: this.value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                         //const SizedBox(width: 10), 
                         const Text(
                          'Save this address',
                          style: TextStyle(fontSize: 14.0),
                        ), //Checkbox
                      ], //<Widget>[]
                    ),
                     const SizedBox(
                      height: 10,
                    ), 
                    Button1()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressInputContainer extends StatelessWidget {
  const AddressInputContainer({super.key, required this.iconData, required this.hintText});
  final IconData iconData;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: 400,
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
               Icon(
                iconData,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 1.5,
                height: 28,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 188, 188, 188),
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(
                width: 10,
              ),
               Expanded(
                  child: TextField(
                decoration:
                    InputDecoration(hintText: hintText, border: InputBorder.none),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class AddressInputContainer2 extends StatelessWidget {
  const AddressInputContainer2({super.key, required this.iconData, required this.hintText});
  final IconData iconData;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: InkWell(
         onTap: (){
                                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SearchScreen()),
  );
                      },
        child: Container(
          width: 400,
          height: 50,
          decoration: BoxDecoration(
              color: const Color(0xfff7f7f7),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                 Icon(
                  iconData,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 1.5,
                  height: 28,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 188, 188, 188),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  width: 10,
                ),
                 Expanded(
                    child: TextField(
                      enabled: false,
                  decoration:
                      InputDecoration(hintText: hintText, border: InputBorder.none),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

