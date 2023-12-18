// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class FileUpload extends StatefulWidget {
//   @override
//   _FileUploadState createState() => _FileUploadState();
// }

// class _FileUploadState extends State<FileUpload> {
//   XFile? image;
//   final ImagePicker picker = ImagePicker();

//   Future getImage(ImageSource media) async {
//     var img = await picker.pickImage(source: media);

//     setState(() {
//       image = img;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: 20),
//         Text(
//           'Subir Comprobante',
//           style: TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 13.0,
//             fontWeight: FontWeight.w500,
//             height: 1.36,
//             letterSpacing: 0.25,
//             color: (Color(0XFF8B8B8B)),
//           ),
//         ),
//         SizedBox(height: 10),
//         Container(
//           padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12.0),
//             color: Color(0XFFEAEAEA),
//           ),
//           child: TextButton(
//             onPressed: () {
//               myAlert();
//             },
//             child: Text('Seleccionar Archivo'),
//           ),
//         ),
//         SizedBox(height: 10),
//         image != null
//             ? Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(8),
//                   child: Image.file(
//                     File(image!.path),
//                     fit: BoxFit.cover,
//                     width: MediaQuery.of(context).size.width,
//                     height: 100,
//                   ),
//                 ),
//               )
//             : Text(
//                 "No Image",
//                 style: TextStyle(fontSize: 20),
//               ),
//       ],
//     );
//   }

//   void myAlert() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           title: Text('Seleccione el medio para cargar'),
//           content: Container(
//             height: MediaQuery.of(context).size.height / 6,
//             child: Column(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     getImage(ImageSource.gallery);
//                   },
//                   child: Text('Desde la Galería'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     getImage(ImageSource.camera);
//                   },
//                   child: Text('Desde la Cámara'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

//     return Container(
//       height: 80.0,
//       padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12.0),
//         color: Color(0XFFEAEAEA),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Subir Comprobante',
//             style: const TextStyle(
//                 fontFamily: 'Poppins',
//                 fontSize: 13.0,
//                 fontWeight: FontWeight.w500,
//                 height: 1.36,
//                 letterSpacing: 0.25,
//                 color: (Color(0XFF8B8B8B))),
//           ),
//           SizedBox(height: 10),
//           Container(
//             padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12.0),
//               color: Color(0XFFEAEAEA),
//             ),
//             child: TextButton(
//               onPressed: () {
//                 myAlert();
//               },
//               child: Text('Seleccionar Archivo'),
//             ),
//           ),
//           SizedBox(height: 10),
//           image != null
//               ? Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image.file(
//                       File(image!.path),
//                       fit: BoxFit.cover,
//                       width: MediaQuery.of(context).size.width,
//                       height: 100,
//                     ),
//                   ),
//                 )
//               : Text(
//                   "No Image",
//                   style: TextStyle(fontSize: 20),
//                 ),
//         ],
//       ),
//     );
//   }

//   void myAlert() {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//           title: Text('Seleccione el medio para cargar'),
//           content: Container(
//             height: MediaQuery.of(context).size.height / 6,
//             child: Column(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     getImage(ImageSource.gallery);
//                   },
//                   child: Text('Desde la Galería'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     getImage(ImageSource.camera);
//                   },
//                   child: Text('Desde la Cámara'),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FileUpload extends StatefulWidget {
  @override
  _FileUploadState createState() => _FileUploadState();
}

class _FileUploadState extends State<FileUpload> {
  XFile? image;
  final ImagePicker picker = ImagePicker();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0XFFEAEAEA),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Subir Comprobante',
            style: const TextStyle(
                fontFamily: 'Poppins',
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                height: 1.36,
                letterSpacing: 0.25,
                color: (Color(0XFF8B8B8B))),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0XFFEAEAEA),
            ),
            child: TextButton(
              onPressed: () {
                myAlert();
              },
              child: Text('Seleccionar Archivo'),
            ),
          ),
          if (image != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.file(
                  File(image!.path),
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                ),
              ),
            ),
        ],
      ),
    );
  }

  void myAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          title: Text('Seleccione el medio para cargar'),
          content: Container(
            height: MediaQuery.of(context).size.height / 6,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    getImage(ImageSource.gallery);
                  },
                  child: Text('Desde la Galería'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    getImage(ImageSource.camera);
                  },
                  child: Text('Desde la Cámara'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
