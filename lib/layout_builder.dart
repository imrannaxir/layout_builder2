import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatefulWidget {
  const MyLayoutBuilder({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  State<MyLayoutBuilder> createState() => _MyLayoutBuilderState();
}

class _MyLayoutBuilderState extends State<MyLayoutBuilder> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search,size: 32,)
        ],
      ),
      body: myLayoutBuilder(),
      drawer: myDrawer(),
      floatingActionButton: myFloatingActionButton(),
      bottomNavigationBar: myBottomNavigationBar(),
    );
  }


  Widget myLayoutBuilder(){
    return  LayoutBuilder(
      builder: (context,constraints){
        return Center(
          child: Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    color: Colors.green,
                    height: constraints.maxHeight*0.24,
                    width: constraints.maxWidth*0.5,
                    child: const Center(
                      child: Text(
                        'BOX 1',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.blue,
                    height: constraints.maxHeight*0.24,
                    width: constraints.maxWidth*0.5,
                    child: const Center(
                      child: Text(
                        'BOX 2',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    color: Colors.yellow,
                    height: constraints.maxHeight*0.24,
                    width: constraints.maxWidth*0.5,
                    child:  Center(
                      child: Text(
                        '$_counter',
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                color: Colors.purple,
                height: constraints.maxHeight*0.72,
                width: constraints.maxWidth*0.5,
                child: const Center(
                  child: Text(
                    'BOX 3',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget myFloatingActionButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'INCREMENT',
          child: const Icon(
            Icons.add,
            size: 24,
          ),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'DECREMENT',
          child: const Icon(Icons.remove,size: 24,),
        ),
      ],
    );
  }

  Widget myBottomNavigationBar(){
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,size: 24,),label: 'Home Page'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance,size: 24,),label: 'My Account'),
          BottomNavigationBarItem(icon: Icon(Icons.wifi_tethering_outlined,size: 24,),label: 'WiFi'),
        ],
      ),
    );
  }

  Widget myDrawer(){
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.green,
            child: const DrawerHeader(
              child: Center(
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: ListTile(
              leading: Icon(Icons.account_balance,size: 32,),
              title: Text(
                'My Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.delete,size: 32,),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'LOG_IN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'SIGN_UP',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
