import 'package:ecommerce/feauters/home_store/data.dart';
import 'package:ecommerce/feauters/home_store/home_screen.dart';
import 'package:ecommerce/theme/custom_icons.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:ecommerce/widgets/drag_handle_widget.dart';
import 'package:flutter/material.dart';

class HomeStore extends StatefulWidget {
  const HomeStore({Key? key}) : super(key: key);

  @override
  HomeStoreState createState() => HomeStoreState();
}

class HomeStoreState extends State<HomeStore> {
  String selectedCity = 'Almaty, Kazakhstan';

  void _showCityPicker() {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const DragHandle(),
              const SizedBox(height: 25),
              ...cities.map(_buildCityTile).toList(),
            ],
          ),
        );
      },
    );
  }

  Widget _buildCityTile(String city) => ListTile(
        leading: IconButton(
          icon: Icon(CustomIcons.location_on,
              color: Theme.of(context).primaryColor),
          onPressed: () {},
        ),
        title: Text(city, style: appBarStyle),
        onTap: () {
          setState(() {
            selectedCity = city;
          });

          Navigator.pop(context);
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(CustomIcons.location_on),
            const SizedBox(width: 10),
            Text(
              selectedCity,
              style: appBarStyle,
            ),
            IconButton(
              icon: const Icon(Icons.arrow_drop_down_rounded),
              onPressed: _showCityPicker,
            ),
          ],
        ),
      ),
      body: const HomeScreen(),
    );
  }
}
