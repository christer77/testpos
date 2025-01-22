import 'package:flutter/material.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';



class PrintScreen extends StatelessWidget {

  
  Ticket testTicket() {
  final Ticket ticket = Ticket(PaperSize.mm80);

  ticket.text(
      'Regular: aA bB cC dD eE fF gG hH iI jJ kK lL mM nN oO pP qQ rR sS tT uU vV wW xX yY zZ');
  ticket.text('Special 1: àÀ èÈ éÉ ûÛ üÜ çÇ ôÔ',
      styles: PosStyles(codeTable: PosCodeTable.westEur));
  ticket.text('Special 2: blåbærgrød',
      styles: PosStyles(codeTable: PosCodeTable.westEur));

  ticket.text('Bold text', styles: PosStyles(bold: true));
  ticket.text('Reverse text', styles: PosStyles(reverse: true));
  ticket.text('Underlined text',
      styles: PosStyles(underline: true), linesAfter: 1);
  ticket.text('Align left', styles: PosStyles(align: PosAlign.left));
  ticket.text('Align center', styles: PosStyles(align: PosAlign.center));
  ticket.text('Align right',
      styles: PosStyles(align: PosAlign.right), linesAfter: 1);

  ticket.text('Text size 200%',
      styles: PosStyles(
        height: PosTextSize.size2,
        width: PosTextSize.size2,
      ));

  ticket.feed(2);
  ticket.cut();
  return ticket;
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }





























  
  /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ESC/POS Printer Example'),
      ),
      body: Center(
        child: ElevatedButton(
          // onPressed: _printReceipt,
          child: Text('Print Receipt'),
        ),
      ),
    );
  } */

}
