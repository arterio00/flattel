import 'package:flutter/material.dart';

class MyDropMenu extends StatefulWidget {
  const MyDropMenu({
    Key? key,
    required this.testList,
    required this.value,
  }) : super(key: key);

  final List<dynamic> testList;
  final ValueChanged<String> value;
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

  _onChanged(int position) {
    setState(() {
      _selectedIndex = position;
      enableList = !enableList;
      widget.value(widget.testList[_selectedIndex!]);
    });
  }

  Widget _buildSearchList() => Container(
        constraints: const BoxConstraints(maxHeight: 200),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          //   color: Color(0x60DADADA),
        ),
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const RangeMaintainingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: widget.testList.length,
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
                      borderRadius: position == widget.testList.length - 1
                          ? const BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            )
                          : null,
                      color: position == _selectedIndex
                          ? Colors.grey[300]
                          : const Color(0x60DADADA),
                      // borderRadius: const BorderRadius.only(
                      //     bottomLeft: Radius.circular(10.0),
                      //     bottomRight: Radius.circular(10.0))
                    ),
                    child: Text(
                      widget.testList[position],
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: const Radius.circular(10.0),
                bottom: !enableList
                    ? const Radius.circular(10.0)
                    : const Radius.circular(0),
              ),
              color: const Color(0x60DADADA),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            height: 44.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                    child: Text(
                  _selectedIndex == null
                      ? widget.testList[0]
                      : widget.testList[_selectedIndex!],
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
        enableList
            ? _buildSearchList()
            : Container(
                color: Colors.red,
              )
      ],
    );
  }
}
