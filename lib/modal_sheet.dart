import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ModalWillScope extends StatelessWidget {
  const ModalWillScope({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
      return Dialog(
          insetPadding: EdgeInsets.only(top:40),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(13.0))),
        
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(13),
              topLeft: Radius.circular(13),
              // bottomRight: Radius.circular(13),
              // bottomLeft: Radius.circular(13)
            ),
            child: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                border: Border(),
                leading: Container(),
                trailing: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                ),
                middle: Text('Complete Purchase'),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: WebView(
                    initialUrl: 'https://flutter.dev',
                    javascriptMode: JavascriptMode.unrestricted,
                  ),
                ),
              ),
            ),
          ));
  }
}
