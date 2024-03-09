import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';

class EccomerceTextField extends StatelessWidget {
  const EccomerceTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 40, top: 30),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300, maxHeight: 40),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFFFF6E4E),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25.0),
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
                ),
                style: searchStyle,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              Icons.qr_code_scanner_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
