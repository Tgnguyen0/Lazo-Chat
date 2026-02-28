import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Lazo'),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  bool agreedToTerms = false;

  void _toMainPage() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MyHomePage(title: "Đăng nhập"))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Đăng ký")),

        // Scrollbar
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    height: 120,
                  ),

                  const SizedBox(height: 30,),

                  const Text(
                    "ĐĂNG KÝ",
                    style: TextStyle(
                      fontSize: 28,
                      color: Color.fromRGBO(0, 0, 0, 255),
                      backgroundColor: Color.fromRGBO(255, 255, 255, 255),
                      fontWeight: FontWeight.bold
                    ),
                  ),

                  const SizedBox(height: 30,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                        "Tên người dùng",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(0, 0, 0, 255),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),

                  const SizedBox(height: 10,),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Tên người dùng",
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 255),
                        backgroundColor: Color.fromRGBO(255, 255, 255, 255),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Số điện thoại",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 255),
                        backgroundColor: Color.fromRGBO(255, 255, 255, 255),
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Số điện thoại",
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Mật khẩu",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(0, 0, 0, 255)
                      )
                    )
                  ),

                  const SizedBox(height: 10,),

                  TextField(
                    decoration: InputDecoration(
                      labelText: "Mật khẩu",
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                      )
                    ),
                  ),

                  const SizedBox(height: 20,),

                  Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                          "Nhập lại mật khẩu",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(0, 0, 0, 255)
                          )
                      )
                  ),

                  const SizedBox(height: 10,),

                  TextField(
                    decoration: InputDecoration(
                        labelText: "Mật khẩu nhập lại",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12)
                        )
                    ),
                  ),

                  const SizedBox(height: 10,),

                  // ===== Checkbox =====
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,  // kiểu dẫn đầu
                    title: const Text("Bạn đã đồng ý với điều khoản dịch vụ của chúng tôi"),
                    value: agreedToTerms,
                    onChanged: (bool? value) {
                      setState(() {
                        agreedToTerms = value ?? false;
                      });
                    },
                  ),

                  SizedBox(
                    width: double.infinity, // Nút chiếm toàn bộ chiều ngang
                    height: 50,

                    child: ElevatedButton(
                      onPressed: () {
                        // Hàm chạy khi bấm nút
                        print("Bạn đã bấm đăng nhập");
                      },

                      // Chỉnh style cho ElevatedButton và theo dõi state của ElevatedButton
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith<Color>(
                              (states) {
                            if (states.contains(WidgetState.pressed)) {
                              return Colors.red;
                            }
                            return const Color.fromRGBO(120, 120, 120, 1);
                          },
                        ),
                        foregroundColor: WidgetStateProperty.all<Color>(
                          Colors.white,
                        ),
                      ),

                      child: const Text(
                        "Đăng ký",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            )
        ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _toRegisterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (contex) => const RegisterPage())
    );
  }

  @override
  Widget build(BuildContext context) {

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Color.fromRGBO(255, 255, 255, 255),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center giúp đưa toàn bộ nội dung ra giữa màn hình
        child: Padding(
          // Tạo khoảng cách với viền màn hình
          padding: const EdgeInsets.all(20),

          child: Column(
            // Sắp xếp các widget theo chiều dọc
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              // ===== LOGO =====
              Image.asset(
                "assets/images/logo.png",
                height: 120,
              ),

              // Khoảng cách giữa logo và tiêu đề
              const SizedBox(height: 30),

              // ===== TIÊU ĐỀ =====
              const Text(
                "ĐĂNG NHẬP",
                style: TextStyle(
                  fontSize: 28,
                  color: Color.fromRGBO(0, 0, 0, 255),
                  backgroundColor: Color.fromRGBO(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),

              // Khoảng cách giữa tiêu đề và ô nhập
              const SizedBox(height: 30),

              // ===== Ô NHẬP EMAIL =====
              TextField(
                decoration: InputDecoration(
                  labelText: "Số điện thoại hay Email", // Chữ hiển thị trong ô
                  prefixIcon: const Icon(Icons.email), // Icon bên trái
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Bo góc
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ===== Ô NHẬP MẬT KHẨU =====
              TextField(
                obscureText: true, // Ẩn ký tự mật khẩu
                decoration: InputDecoration(
                  labelText: "Mật khẩu",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // ===== NÚT ĐĂNG NHẬP =====
              SizedBox(
                width: double.infinity, // Nút chiếm toàn bộ chiều ngang
                height: 50,

                child: ElevatedButton(
                  onPressed: () {
                    // Hàm chạy khi bấm nút
                    print("Bạn đã bấm đăng nhập");
                  },

                  // Chỉnh style cho ElevatedButton và theo dõi state của ElevatedButton
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.resolveWith<Color>(
                          (states) {
                        if (states.contains(WidgetState.pressed)) {
                          return Colors.red;
                        }
                        return const Color.fromRGBO(120, 120, 120, 1);
                      },
                    ),
                    foregroundColor: WidgetStateProperty.all<Color>(
                      Colors.white,
                    ),
                  ),

                  child: const Text(
                    "Đăng nhập",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toRegisterPage,
        tooltip: 'Thêm tài khoản',
        child: const Icon(Icons.add),
      ),
    );
  }
}
