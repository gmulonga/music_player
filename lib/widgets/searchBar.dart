import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Searchbar extends StatefulWidget {
  Searchbar({
    this.onChanged,
    required this.controller,
    this.onTap,
  });

  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final VoidCallback? onTap;

  @override
  _SearchbarState createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              setState(() {

              });

              if (widget.onChanged != null) {
                widget.onChanged!(value);
              }
            },
            controller: widget.controller,
            onTap: widget.onTap,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              contentPadding:
              EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide:
                BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              suffixIcon:  IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(() {
                    print(widget.controller?.text ?? "");
                  });
                },

            ),
          ),
          )],
      ),
    );
  }
}