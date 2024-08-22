import 'package:flutter/material.dart';

bool aCOptopn1 = false;
bool aCOptopn2 = false;
bool aCOptopn3 = false;

bool haveOptopn1 = false;
bool haveOptopn2 = false;

class PlanInfoWidget extends StatelessWidget {
  const PlanInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 40,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xff7F1618),
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Additional Covers',
                  style: TextStyle(
                      color: Color(0xff7F1618), fontWeight: FontWeight.w700),
                )
              ],
            ),
            const Divider(
              color: Colors.black26,
              thickness: .5,
            ),
            const SizedBox(
              height: 8,
            ),
            AdditionalCoverOptionsWidget(
              text1: 'Car replacement\n',
              text2: '(Normal) - 5 Days  ',
              text3: '(Optional)',
              amount: "25.00 QAR",
              check: aCOptopn1,
            ),
            AdditionalCoverOptionsWidget(
              text1: '24/7 Roadside Assitance\n',
              text2: '',
              text3: '(Optional)',
              amount: "25.00 QAR",
              check: aCOptopn2,
            ),
            AdditionalCoverOptionsWidget(
              text1: 'Physical Damage ,\n',
              text2: 'Theft and Fire',
              text3: '(Optional)',
              amount: "50.00 QAR",
              check: aCOptopn3,
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Net Premium to Pay',
                  style: TextStyle(
                      color: Color(0xff7F1618), fontWeight: FontWeight.w700),
                )
              ],
            ),
            const Divider(
              color: Colors.black38,
              thickness: .7,
            ),
            const NetPayTitlesWidget(
              title: 'Premium Package',
              amount: '1540.00',
            ),
            const Divider(
              color: Colors.black26,
              thickness: .5,
            ),
            const NetPayTitlesWidget(
              title: 'Discount %',
              amount: '5%',
            ),
            const Divider(
              color: Colors.black26,
              thickness: .5,
            ),
            const NetPayTitlesWidget(
              title: 'Discount Amount',
              amount: '111.00',
            ),
            const Divider(
              color: Colors.black26,
              thickness: .5,
            ),
            const NetPayTitlesWidget(
              title: 'Gross Premium',
              amount: '1651.00',
            )
          ],
        ),
      ),
    );
  }
}

class NetPayTitlesWidget extends StatelessWidget {
  final String title;
  final String amount;
  const NetPayTitlesWidget({
    super.key,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 12),
          ),
          Text(
            amount,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class AdditionalCoverOptionsWidget extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final String amount;
  bool check;
  AdditionalCoverOptionsWidget(
      {super.key,
      required this.text1,
      required this.text2,
      required this.amount,
      required this.text3,
      required this.check});

  @override
  State<AdditionalCoverOptionsWidget> createState() =>
      _AdditionalCoverOptionsWidgetState();
}

class _AdditionalCoverOptionsWidgetState
    extends State<AdditionalCoverOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: widget.check,
                  checkColor: const Color(0xff7F1618),
                  // activeColor: Colors.white,
                  fillColor: const MaterialStatePropertyAll(Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.grey)),
                  onChanged: (value) {
                    widget.check = value!;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              RichText(
                text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                  children: [
                    TextSpan(
                      text: widget.text1,
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    TextSpan(
                      text: widget.text2,
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    TextSpan(
                      text: widget.text3,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            widget.amount,
            style: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
