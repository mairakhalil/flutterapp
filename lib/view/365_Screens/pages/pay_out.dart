import 'package:flutter/material.dart';
import 'package:screens_tkieroapp/utils/constans.dart';
import 'package:screens_tkieroapp/view/365_Screens/components/buttons.dart';
import 'package:screens_tkieroapp/view/365_Screens/components/dropdown.dart';

class PayOutScreen extends StatefulWidget {
  const PayOutScreen({super.key});

  @override
  State<PayOutScreen> createState() => _PayOutScreenState();
}

class _PayOutScreenState extends State<PayOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: primaryColorN),
        title: const Text(
          "Retiro Personal",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 13.0,
            fontWeight: FontWeight.w700,
            height: 1.45,
            letterSpacing: 0.25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, top: 40, right: 30.0),
        child: Column(
          children: <Widget>[
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
            const SizedBox(height: 60),
            DropDownMenu(
              label: 'Seleccionar Cuenta',
              selectedValue: 'Alias de la cuenta',
              options: ['Alias de la cuenta'],
              onChanged: (String? newValue) {
                // Handle the selected value change
              },
            ),
            const SizedBox(
              height: 20,
            ),
            DropDownMenu(
              label: 'Moneda Disponible',
              selectedValue: 'USD 360.00',
              options: ['USD 360.00'],
              onChanged: (String? newValue) {
                // Handle the selected value change
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 56.0,
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: Colors.grey[200],
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Monto a Retirar',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13.0,
                        fontWeight: FontWeight.w500,
                        height: 1.36,
                        letterSpacing: 0.25,
                        color: Color(0XFF8B8B8B)),
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
            const Expanded(
              child: SizedBox.expand(),
            ),
            Buttons(
              btncolor: primaryColorN,
              btntext: "Completar Transaccion",
              btntextcolor: buttonColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
