import 'package:flutter/material.dart';

AlertMessage(BuildContext context, String title, String message) {
  Widget okButton = TextButton(
    onPressed: () => Navigator.pop(context),
    child: Text("OK"),
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

CofirmationAlert(BuildContext context, String title, String message,
    String txtBtnNo, String txtBtnYes, btnYes) {
  // set up the buttons
  Widget cancelButton = TextButton(
    child: Text(txtBtnNo),
    onPressed: () => Navigator.pop(context),
  );
  Widget continueButton = TextButton(
    child: Text(txtBtnYes),
    onPressed: btnYes,
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      cancelButton,
      continueButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
