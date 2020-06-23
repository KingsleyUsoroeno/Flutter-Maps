import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  final Function searchResults;

  SearchView({this.searchResults});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 52.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
        color: Colors.green[700],
      ),
      child: TextFormField(
        controller: _controller,
        maxLines: 1,
        decoration: InputDecoration(
            hintText: 'Search for Restaurants in your area',
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                _settingModalBottomSheet(context);
              },
            ),
            hintStyle: TextStyle(fontSize: 16.0)),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 300,
            width: double.infinity,
            child: new Wrap(
              children: <Widget>[
                new ListTile(leading: new Icon(Icons.music_note), title: new Text('Music'), onTap: () => {}),
                new ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }
}
