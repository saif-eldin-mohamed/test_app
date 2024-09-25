import 'package:flutter/material.dart';

class ServiceDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final items = [
      _PriceItem("Price:", "\$120"),
      _PriceItem("Sub Total:", "\$240"),
      _PriceItem("Discount (5% off):", "-\$15.12", isDiscount: true),
      _PriceItem("Tax:", "\$15.12", isTax: true),
      _PriceItem("Total Amount:", "\$255.12", isTotal: true),
    ];

    return Container(
      // color: Colors.grey.shade300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (context, index) => Divider(height: 20, thickness: 1),
        itemBuilder: (context, index) {
          final item = items[index];
          return _buildRow(item);
        },
      ),
    );
  }

  Widget _buildRow(_PriceItem item) {
    final textStyle = item.isTotal
        ? TextStyle(fontSize: 18, fontWeight: FontWeight.bold)
        : TextStyle(fontSize: 16);

    final valueColor = item.isDiscount
        ? Colors.green
        : (item.isTax ? Colors.red : Colors.black);

    return Row(
      children: [
        Text(item.label, style: textStyle),
        Spacer(),
        Text(
          item.value,
          style: textStyle.copyWith(color: valueColor),
        ),
      ],
    );
  }
}

class _PriceItem {
  final String label;
  final String value;
  final bool isDiscount;
  final bool isTax;
  final bool isTotal;

  _PriceItem(this.label, this.value,
      {this.isDiscount = false, this.isTax = false, this.isTotal = false});
}
