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

  bool _submitted = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String? get _errorText {
    final text = _controller.value.text;
    if (text.isEmpty) {
      return 'Can\'t be empty';
    }
    if (text.length < 4) {
      return 'Too short';
    }
    return null;
  }

  void _submit() {
    setState(() => _submitted = true);
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
                    errorText: _submitted ? _errorText : null,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  // the errorText getter *depends* on _controller
                  onPressed: _controller.value.text.isNotEmpty ? _submit : null,
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
