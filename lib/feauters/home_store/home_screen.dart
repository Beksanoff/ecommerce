import 'package:ecommerce/feauters/home_store/ecommerce_home_sales.dart';
import 'package:ecommerce/generated/l10n.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:ecommerce/feauters/home_store/ecommerce_text_field.dart';
import 'package:ecommerce/feauters/home_store/ecommerce_row_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _filterPicker() {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close,
                          color: Theme.of(context).primaryColor)),
                  const Text(
                    'Filter Options',
                    style: baseCategoryStyle,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.done,
                          color: Theme.of(context).primaryColor)),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 185, bottom: 10),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 13),
          child: CupertinoScrollbar(
            child: Container(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        S.of(context).selectCategory,
                        style: selectCategory,
                      ),
                    ),
                    Text(
                      S.of(context).viewAll,
                      style: viewAll,
                    ),
                  ],
                ),
                const RowCategories(),
                const EccomerceTextField(),
                const HotSalesWidget(),
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 80),
                            child: Padding(
                              padding: EdgeInsets.only(right: 72),
                              child: Text(
                                'Best Sellers',
                                style: selectCategory,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.filter_alt,
                              color: Color(0xFF010035),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('data'),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
