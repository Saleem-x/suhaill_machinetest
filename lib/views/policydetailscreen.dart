import 'package:flutter/material.dart';
import 'package:suhail_machine_test/views/widgets/mainscreenappbarwidget.dart';
import 'package:suhail_machine_test/views/widgets/planinfowidget.dart';
import 'package:suhail_machine_test/views/widgets/takeplancontainer.dart';

class PolicyDetailScreen extends StatelessWidget {
  const PolicyDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bgimage.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const MainScreenAppBarWidget(title: 'Personal Information'),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const TekePlanContainerWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    const PlanInfoWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                    const HaveCouponCodeWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xffF0F0F0),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '   Enter Coupon Code',
                                        hintStyle: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 15)),
                                  )),
                                  MaterialButton(
                                    color: const Color(0xff7F1618),
                                    minWidth: 80,
                                    height: 40,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    onPressed: () {},
                                    child: const Text(
                                      'Apply',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                      child: Divider(
                        color: Colors.black,
                        thickness: .5,
                      ),
                    ),
                    const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Premium ',
                                style: TextStyle(
                                    color: Color(0xff7F1618),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700)),
                            Text('2836.00 QAR',
                                style: TextStyle(
                                    color: Color(0xff7F1618),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700)),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      child: MaterialButton(
                        onPressed: () {},
                        color: const Color(0xffC79F38),
                        minWidth: double.infinity,
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HaveCouponCodeWidget extends StatefulWidget {
  const HaveCouponCodeWidget({
    super.key,
  });

  @override
  State<HaveCouponCodeWidget> createState() => _HaveCouponCodeWidgetState();
}

class _HaveCouponCodeWidgetState extends State<HaveCouponCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: haveOptopn1,
                  checkColor: const Color(0xff7F1618),
                  fillColor: const MaterialStatePropertyAll(Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.grey)),
                  onChanged: (value) {
                    haveOptopn1 = value!;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Have a Promo code? ',
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 16,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: haveOptopn2,
                  checkColor: const Color(0xff7F1618),
                  // activeColor: Colors.white,
                  fillColor: const MaterialStatePropertyAll(Colors.white),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: Colors.grey)),
                  onChanged: (value) {
                    haveOptopn2 = value!;
                    setState(() {});
                  },
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Have a Voucher code? ',
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
