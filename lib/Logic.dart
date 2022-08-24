import 'package:flutter/material.dart';

class Shine extends StatefulWidget {
  const Shine({Key? key}) : super(key: key);

  @override
  State<Shine> createState() => _ShineState();
}

class _ShineState extends State<Shine> {
  // bool  _isOpen = false;
  bool _isopen = true;
  void Drop() {
    setState(() {
      _isopen = !_isopen;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade200,
        title: Text('Add to Card'),
        leading: Icon(Icons.arrow_back),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image(
                          image: AssetImage("assets/has.png"),
                          height: 130,
                          width: 120,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            "VE + BASIC BLUE CUT \nCOMPUTER GLASES",
                            style: TextStyle(
                                fontSize: 18, overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lens : RS.800"),
                            SizedBox(
                              width: 60,
                            ),
                            Text(
                              'Rs1110',
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.red),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text("Lens : RS.700"),
                            SizedBox(
                              width: 82,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  Drop();
                                });
                              },
                              child: _isopen == true
                                  ? Icon(
                                Icons.arrow_downward_outlined,
                                color: Colors.deepPurpleAccent,
                                size: 30,
                              )
                                  : Icon(
                                Icons.arrow_upward_outlined,
                                color: Colors.deepPurpleAccent,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 5,
                  color: Colors.black,
                ),
                !_isopen
                    ? const SizedBox.shrink()
                    : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Design:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Text(
                            'Design',
                            style: TextStyle(
                                color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          Column(
                            children: [
                              Text(
                                'Totel',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text('Rs.100'),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Material:',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'fiber lens',
                            style: TextStyle(
                                color: Colors.black, fontSize: 18),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Benefits:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Cut harm',
                            style: TextStyle(
                                color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            'Design:',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 23,
                          ),
                          Text(
                            'Single vision',
                            style: TextStyle(
                                color: Colors.black, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '100% UV Protection \n Scratch Resistance ,ARC',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black),
                              )),
                          MaterialButton(
                            color: Colors.blueAccent,
                            shape: RoundedRectangleBorder(),
                            onPressed: () {},
                            child: Text(
                              "Add To Card",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
