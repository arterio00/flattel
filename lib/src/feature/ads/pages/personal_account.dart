import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalAccount> createState() => _PersonalAccountState();
}

class _PersonalAccountState extends State<PersonalAccount> {
  late final _controller = TextEditingController();

  final firestore = FirebaseFirestore.instance;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        // Note: pass _controller to the animation argument
        valueListenable: _controller,
        builder: (context, TextEditingValue value, __) {
          // this entire widget tree will rebuild every time
          // the controller value changes

          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 80,
                child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: 'Enter your name',
                    // the errorText getter *depends* on _controller
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  // the errorText getter *depends* on _controller
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
