import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suhail_machine_test/state/cubit/expandpolicy/policy_expand_cubit.dart';
import 'package:suhail_machine_test/views/policydetailscreen.dart';

class PolicyListingWidget extends StatelessWidget {
  const PolicyListingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<PolicyExpandCubit, PolicyExpandState>(
        builder: (context, state) {
          return ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      context
                          .read<PolicyExpandCubit>()
                          .expandTile(5, index, state.expandedList[index]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: state.expandedList[index] == false
                              ? const Color(0xffF2F2F2)
                              : const Color(0xff7F1618),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Comprehensive\nPlus Plan',
                                      style: TextStyle(
                                          color: state.expandedList[index]
                                              ? Colors.white
                                              : const Color(0xff7F1618),
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '5875 QAR',
                                      style: TextStyle(
                                        color: Color(0xffC79F38),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      'Per Year',
                                      style: TextStyle(
                                          color: Color(0xffC79F38),
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                )
                              ],
                            ),
                            const Divider(
                              color: Colors.black26,
                              thickness: .5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Benefits",
                                  style: TextStyle(
                                    color: state.expandedList[index]
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                AnimatedRotation(
                                  turns: state.expandedList[index] ? 0.50 : 0.0,
                                  duration: const Duration(milliseconds: 300),
                                  child: Transform.rotate(
                                    angle: 4.7,
                                    child: Icon(
                                      CupertinoIcons.forward,
                                      color: state.expandedList[index]
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AnimatedSize(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                              reverseDuration:
                                  const Duration(milliseconds: 300),
                              child: Visibility(
                                visible: state.expandedList[index],
                                maintainState: true,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 245,
                                      width: double.infinity,
                                      child: ListView.separated(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) => Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    policyBenfitsList[index],
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.check,
                                                    color: Color(0xffC79F38),
                                                  )
                                                ],
                                              ),
                                          separatorBuilder: (context, index) =>
                                              const SizedBox(
                                                height: 3,
                                              ),
                                          itemCount: policyBenfitsList.length),
                                    ),
                                    const SizedBox(
                                      height: 38,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          const PolicyDetailScreen(),
                                    ));
                              },
                              color: const Color(0xffC79F38),
                              minWidth: double.infinity,
                              height: 50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'Get Insured',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 30,
                  ),
              itemCount: 5);
        },
      ),
    );
  }
}

List<String> policyBenfitsList = [
  'Unlimeted Liability',
  'On Damage Liability',
  'Agency repair',
  'No Depreciation',
  'Unknown damage',
  'GAP Insurance',
  'Road side Assistance 24/7',
  'No Claim discount',
  'Installment payment'
];
