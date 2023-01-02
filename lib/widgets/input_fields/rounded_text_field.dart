import 'package:ecommerce/view/home/widgets/filter_sheet.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 7,
            offset: const Offset(1, 1),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          isDense: true,
          prefixIcon: Container(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (BuildContext context) {
                    return const FilterSheet();
                  },
                );
              },
              child: Icon(
                Icons.filter_list,
                color: Colors.grey[800],
              ),
            ),
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: Icon(
              Icons.search,
              color: Colors.grey[800],
            ),
          ),
          hintText: 'Search',
        ),
      ),
    );
  }
}
