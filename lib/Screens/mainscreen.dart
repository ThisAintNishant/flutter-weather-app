import 'package:flutter/material.dart';
import '../constants.dart' as constant;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size.height * 0.1,
            child: Text(
              '${constant.apiInstance.city}',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: constant.backgroundcolor,
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.16,
            child: Text(
              constant.apiInstance.date,
              style: TextStyle(
                decoration: TextDecoration.none,
                color: constant.backgroundcolor,
                fontSize: 30,
              ),
            ),
          ),
          Positioned(
              top: size.height * 0.3,
              child: SizedBox(
                child: Image.network('http://openweathermap.org/img/wn/${constant.apiInstance.icon}@2x.png',
                scale: 0.1,),
                width: size.width * 0.6,
                height: size.height * 0.23,
              )),
          Positioned(
              top: size.height * 0.6,
              child: Text(
                '${constant.apiInstance.temp}°c',
                style: TextStyle(
                  fontSize: size.width * 0.16,
                  decoration: TextDecoration.none,
                  color: constant.backgroundcolor,
                ),
              )),
          Positioned(
              bottom: size.height * 0.03,
              child: Row(
                children: [
                  extraInfo(
                    size: size,
                    icon: Icons.thermostat,
                    name: 'MaxTemp',
                    value: '${constant.apiInstance.maxTemp}°c',
                  ),
                  extraInfo(
                    size: size,
                    icon: Icons.air_outlined,
                    name: 'Windspeed',
                    value: '${constant.apiInstance.airSpeed}m/s',
                  ),
                  extraInfo(
                    size: size,
                    icon: Icons.percent,
                    name: 'Humidity',
                    value: '${constant.apiInstance.humidity}%',
                  ),
                ],
              )),
        ],
      ),
    );
  }

  _MainScreenState();
}

class extraInfo extends StatelessWidget {
  extraInfo({
    super.key,
    required this.size,
    required this.icon,
    required this.name,
    required this.value,
  });

  final Size size;
  final IconData icon;
  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.3,
      child: Column(
        children: [
          Icon(
            icon,
          ),
          Text(
            name,
            style: TextStyle(
              color: constant.backgroundcolor,
              decoration: TextDecoration.none,
              fontSize: 20,
            ),
          ),
          Text(value,
              style: TextStyle(
                  fontSize: 25,
                  color: constant.backgroundcolor,
                  decoration: TextDecoration.none))
        ],
      ),
    );
  }
}
