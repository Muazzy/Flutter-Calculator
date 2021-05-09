// import 'package:flutter/material.dart';

// class LightGreyButton extends StatelessWidget {
//   final String buttonText;
//   final Function btnFunction;

//   LightGreyButton({@required this.buttonText, @required this.btnFunction});
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 1,
//       child: MaterialButton(
//         color: Colors.grey[400],
//         shape: CircleBorder(),
//         onPressed: btnFunction ?? () {},
//         child: Center(
//           child: Text(
//             buttonText,
//             style: TextStyle(color: Colors.black, fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DarkGreyButton extends StatelessWidget {
//   final String buttonText;
//   final Function btnFunction;

//   DarkGreyButton({@required this.buttonText, @required this.btnFunction});
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 1,
//       child: MaterialButton(
//         color: Colors.grey[800],
//         shape: CircleBorder(),
//         onPressed: btnFunction ?? () {},
//         child: Center(
//           child: Text(
//             buttonText,
//             style: TextStyle(color: Colors.white, fontSize: 30),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class OrangeButton extends StatelessWidget {
//   final String buttonText;
//   final Function btnFunction;

//   OrangeButton({@required this.buttonText, @required this.btnFunction});
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 1,
//       child: MaterialButton(
//         color: Colors.orange,
//         shape: CircleBorder(),
//         onPressed: btnFunction ?? () {},
//         child: Center(
//           child: Text(
//             buttonText,
//             style: TextStyle(color: Colors.white, fontSize: 35),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ZeroButton extends StatelessWidget {
//   final Function btnFunction;
//   ZeroButton({@required this.btnFunction});
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       flex: 2,
//       child: MaterialButton(
//         color: Colors.grey[800],
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(50),
//           side: BorderSide(width: 8),
//         ),
//         onPressed: btnFunction ?? () {},
//         child: Center(
//           child: Text(
//             '0',
//             style: TextStyle(color: Colors.white, fontSize: 35),
//           ),
//         ),
//       ),
//     );
//   }
// }

/*
Widget lightGreyButton(
    {@required String buttonText, @required Function onPressed}) {
  return Expanded(
    flex: 1,
    child: MaterialButton(
      color: Colors.grey[400],
      shape: CircleBorder(),
      onPressed: onPressed ?? () {},
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    ),
  );
}

Widget darkGreyButton(
    {@required String buttonText, @required Function onPressed}) {
  return Expanded(
    flex: 1,
    child: MaterialButton(
      color: Colors.grey[800],
      shape: CircleBorder(),
      onPressed: onPressed ?? () {},
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    ),
  );
}

Widget orangeButton(
    {@required String buttonText, @required Function onPressed}) {
  return Expanded(
    flex: 1,
    child: MaterialButton(
      color: Colors.orange,
      shape: CircleBorder(),
      onPressed: onPressed ?? () {},
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    ),
  );
}

Widget zeroButton({@required String buttonText, @required Function onPressed}) {
  return Expanded(
    flex: 2,
    child: MaterialButton(
      color: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(width: 8),
      ),
      onPressed: onPressed ?? () {},
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(color: Colors.white, fontSize: 35),
        ),
      ),
    ),
  );
}
*/
