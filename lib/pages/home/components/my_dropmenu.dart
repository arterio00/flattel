import 'package:flutter/material.dart';

class MyDropMenu extends StatefulWidget {
  const MyDropMenu({Key? key, this.hintText}) : super(key: key);
  final String? hintText;
  @override
  State<MyDropMenu> createState() => _MyDropMenuState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyDropMenuState extends State<MyDropMenu> {
  bool enableList = false;
  int? _selectedIndex;
  _onhandleTap() {
    setState(() {
      enableList = !enableList;
    });
  }

  final List<Map> _testList = [
    {'no': 1, 'keyword': 'North Dron'},
    {'no': 2, 'keyword': 'Mabygo'},
    {'no': 3, 'keyword': 'La Shdencoe-In-Hayya'},
    {'no': 4, 'keyword': 'Manslodfield'},
    {'no': 5, 'keyword': 'Bridsportsicast'},
    {'no': 6, 'keyword': 'West Ston'},
    {'no': 7, 'keyword': 'Telshamtwich'},
    {'no': 8, 'keyword': 'Bingombmurington'},
    {'no': 9, 'keyword': 'Port Marlta'},
    {'no': 10, 'keyword': 'Leinecoffs'},
  ];

  _onChanged(int position) {
    setState(() {
      _selectedIndex = position;
      enableList = !enableList;
    });
  }

  Widget _buildSearchList() => Container(
        height: 125.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          //   color: Color(0x60DADADA),
        ),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const RangeMaintainingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: _testList.length,
            itemBuilder: (context, position) {
              return InkWell(
                onTap: () {
                  _onChanged(position);
                },
                child: Container(
                    // padding: widget.padding,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    decoration: BoxDecoration(
                      color: position == _selectedIndex
                          ? Colors.grey[200]
                          : const Color(0x60DADADA),
                      // borderRadius: const BorderRadius.only(
                      //     bottomLeft: Radius.circular(10.0),
                      //     bottomRight: Radius.circular(10.0))
                    ),
                    child: Text(
                      _testList[position]['keyword'],
                      style: const TextStyle(color: Color(0xff27AEA4)),
                    )),
              );
            }),
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: _onhandleTap,
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0)),
              color: Color(0x60DADADA),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            height: 44.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                    child: Text(
                  _selectedIndex != null
                      ? _testList[_selectedIndex!]['keyword']
                      : widget.hintText,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                )),
                const Icon(Icons.expand_more,
                    size: 24.0, color: Color(0xffbbbbbb)),
              ],
            ),
          ),
        ),
        enableList ? _buildSearchList() : Container(),
      ],
    );
  }
}
