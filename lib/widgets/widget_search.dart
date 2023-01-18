import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),

          labelText: "Search ",
          labelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
          hintText: "Search Field ",
          hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
              ),
          // errorText: "Please enter valid product Title*",
          errorStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.white,
              ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_sharp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
