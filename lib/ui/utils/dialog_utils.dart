import 'package:flutter/material.dart';
import 'package:sluggard/utilities/constants.dart';

Dialog showNormalDialog(
    {required BuildContext context, required String message}) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Constants.padding),
    ),
    elevation: 0,
    backgroundColor: Colors.transparent,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: getContextBox(
          context: context,
          title: "Error",
          descriptions: message,
          buttonText: "Close"),
    ),
  );
}

Widget getContextBox(
    {required BuildContext context,
    required String title,
    required String descriptions,
    required String buttonText}) {
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.only(
          left: Constants.padding,
          right: Constants.padding,
          bottom: Constants.padding,
          top: Constants.avatarRadius + Constants.padding,
        ),
        margin: const EdgeInsets.only(top: Constants.padding + 10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(Constants.padding),
          boxShadow: const [
            BoxShadow(
                color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              descriptions,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 22,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white24,
                    elevation: 5,
                    shadowColor: Colors.white10,
                  ),
                  child: Text(
                    buttonText,
                    style: Theme.of(context).textTheme.bodySmall,
                  )),
            ),
          ],
        ),
      ),
      Positioned(
        left: Constants.padding,
        right: Constants.padding,
        child: CircleAvatar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          radius: Constants.padding + 10,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(Constants.padding + 10),
            child: const Icon(
              Icons.warning,
              size: 40,
              color: Color.fromARGB(255, 255, 236, 179),
            ),
          ),
        ),
      )
    ],
  );
}
