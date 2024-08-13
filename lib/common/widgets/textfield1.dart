import 'package:facebook_clone/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class TextField1 extends StatefulWidget {
  final String? hint;
  final String? label;
  final double? height;
  final double? width;
  final bool? addXIcon;
  final String? defaultText;
  final void Function()? onpressed;
  final TextInputType? keyboardType;

  TextField1({
    super.key,
    this.hint,
    this.label,
    this.height = 5,
    this.width = 50,
    this.addXIcon = false,
    this.defaultText = "",
    this.onpressed,
    this.keyboardType,
  });

  @override
  State<TextField1> createState() => _TextField1State();
}

class _TextField1State extends State<TextField1> {
  TextEditingController controller = TextEditingController();
  FocusNode focusNode = FocusNode();
  String? text;
  bool checkForSuffixIcon = false;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(onFocusChanged);
    controller.addListener(refreshSuffixIconState);
  }

  @override
  void dispose() {
    focusNode.removeListener(onFocusChanged);
    controller.removeListener(refreshSuffixIconState);
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  void refreshSuffixIconState() {
    setState(() {
      if (widget.addXIcon == true && focusNode.hasFocus && controller.text.isNotEmpty) {
        checkForSuffixIcon = true;
      } else {
        checkForSuffixIcon = false;
      }
    });
  }

  void onFocusChanged() {
    refreshSuffixIconState();
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: DeviceUtils.getScreenWidth(context) * (widget.width! / 100),
      height: DeviceUtils.getScreenHeight(context) * (widget.height! / 100),
      child: TextField(
        keyboardType: widget.keyboardType,
        controller: controller,
        focusNode: focusNode,
        onChanged: (changed) {
          setState(() {
            text = controller.text;
            refreshSuffixIconState();
          });
          
        },
        onTap: widget.onpressed,
        onTapOutside: (t) => focusNode.unfocus(),
        style: TextStyle(color: Theme.of(context).colorScheme.primary),
        decoration: InputDecoration(
          suffixIcon: checkForSuffixIcon
              ? IconButton(
            onPressed: () {
              controller.clear();
              refreshSuffixIconState();
            },
            icon: Icon(
              Icons.clear,
              color: Theme.of(context).colorScheme.primary,
            ),
          )
              : null,
          hintText: widget.hint,
          labelText: widget.label,
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary.withOpacity(0.6)),
          fillColor: const Color.fromRGBO(243, 243, 243, 0.9),
          contentPadding: const EdgeInsets.all(16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1.5,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
