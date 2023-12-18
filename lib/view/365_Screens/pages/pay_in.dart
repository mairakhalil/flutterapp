import 'package:flutter/material.dart';
import 'package:screens_tkieroapp/utils/constans.dart';
import 'package:screens_tkieroapp/view/365_Screens/components/buttons.dart';
import 'package:screens_tkieroapp/view/365_Screens/components/dropdown.dart';
import 'package:screens_tkieroapp/view/365_Screens/components/file_upload_input.dart';
import 'package:screens_tkieroapp/view/365_Screens/components/text_container.dart';

class PayInScreen extends StatefulWidget {
  const PayInScreen({Key? key}) : super(key: key);

  @override
  State<PayInScreen> createState() => _PayInScreenState();
}

class _PayInScreenState extends State<PayInScreen> {
  String selectedCurrency = 'USD'; // Default currency
  String selectedAccount = 'Alias de la cuenta'; // Default account alias

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: primaryColorN),
        title: const Text(
          "Deposito Personal",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 13.0,
            fontWeight: FontWeight.w700,
            height: 1.45,
            letterSpacing: 0.25,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 30.0, top: 30, right: 30.0),
                child: Column(
                  children: <Widget>[
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Depositar a:',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            height: 1.56,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                    const CustomRichText(label: 'Nombre', value: 'Tkiero App'),
                    const CustomRichText(label: 'Banco', value: 'Nombre Banco'),
                    const CustomRichText(
                        label: 'Cuenta', value: '00000000 - Ahorro'),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        Text(
                          'Información de transacción',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            height: 1.56,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    DropDownMenu(
                      label: 'Seleccionar Cuenta',
                      selectedValue: selectedAccount,
                      options: ['Alias de la cuenta'],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedAccount = newValue!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    DropDownMenu(
                      label: 'Seleccionar Moneda',
                      selectedValue: selectedCurrency,
                      options: ['USD'],
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedCurrency = newValue!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    Container(
                      height: 56.0,
                      padding:
                          const EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey[200],
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Monto',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 13.0,
                              fontWeight: FontWeight.w500,
                              height: 1.36,
                              letterSpacing: 0.25,
                              color: (Color(0XFF8B8B8B)),
                            ),
                          ),
                          SizedBox(height: 4.0),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: '175.50',
                                hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                  height: 1.5,
                                  letterSpacing: 0.75,
                                  color: blackN,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    FileUpload(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Buttons(
              btncolor: primaryColorN,
              btntext: "Completar Transaccion",
              btntextcolor: buttonColor,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
