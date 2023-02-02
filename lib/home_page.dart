import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  bool tap = false;
  bool tap1 = false;
  bool tap2 = false;
  bool tap3 = false;
  double space_elements = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ITESO App'),
      ),
      body: ListView(
        children: [
          Image.network(
              'https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg'),
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: space_elements),
                ListTile(
                  title: Text(
                      'Instituto Tecnológico y de Estudios Superiores de Occidente'),
                  subtitle: Text('Universidad jesuita en Tlaquepaque'),
                  trailing: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      IconButton(
                        color: tap ? Colors.indigo : Colors.black,
                        onPressed: () {
                          tap = !tap;
                          counter++;
                          setState(() {});
                        },
                        icon: Icon(Icons.thumb_up),
                      ),
                      Text('$counter')
                    ],
                  ),
                ),
                SizedBox(height: space_elements),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: 40,
                          color: tap1 ? Colors.indigo : Colors.black,
                          onPressed: () {
                            tap1 = !tap1;
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(SnackBar(
                                  content: Text(
                                      'Manda correo a: admision@iteso.mx')));
                            setState(() {});
                          },
                          icon: Icon(Icons.email),
                        ),
                        Text('Correo')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          iconSize: 40,
                          color: tap2 ? Colors.indigo : Colors.black,
                          onPressed: () {
                            tap2 = !tap2;
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(SnackBar(
                                  content: Text('Llama al: (33) 3669 3434')));
                            setState(() {});
                          },
                          icon: Icon(Icons.phone_bluetooth_speaker),
                        ),
                        Text('Llamada')
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            iconSize: 40,
                            color: tap3 ? Colors.indigo : Colors.black,
                            onPressed: () {
                              tap3 = !tap3;
                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(SnackBar(
                                    content: Text(
                                        'Periférico Sur Manuel Gómez Morín # 8585 C.P. 45604 Tlaquepaque, Jalisco, México')));
                              setState(() {});
                            },
                            icon: Icon(Icons.roundabout_right)),
                        Text('Ruta')
                      ],
                    ),
                  ],
                ),
                SizedBox(height: space_elements),
                Text(
                    'El ITESO, Universidad Jesuita de Guadalajara (Instituto Tecnológico y de Estudios Superiores de Occidente), es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957.La institución forma parte del Sistema Universitario Jesuita (SUJ) que integra a ocho universidades en México. La universidad es nombrada como la Universidad Jesuita de Guadalajara.'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
