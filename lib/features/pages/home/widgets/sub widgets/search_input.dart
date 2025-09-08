import 'package:flutter/material.dart';

class SearchInputWidget extends StatelessWidget {
  final String? searchLabel;
  final TextEditingController? searchController;
  const SearchInputWidget({super.key, this.searchLabel, this.searchController});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,

      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(100),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Icon(Icons.search_rounded, color: Colors.black45),
          Expanded(
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: searchLabel,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                hintStyle: TextStyle(color: Colors.black45),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
