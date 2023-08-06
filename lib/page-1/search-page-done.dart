import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:allowance/utils.dart';

class SearchPage extends StatefulWidget {

  final String amountPassedIn;
  final String logo_url;
  double maxAllowanceAmount = 0.0;
  double allowanceToSpend = 0.0;

  SearchPage({required this.amountPassedIn, required this.logo_url})
  {
	maxAllowanceAmount = double.parse(amountPassedIn.substring(1));
	allowanceToSpend = maxAllowanceAmount;
  }

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // searchpagedoneoBV (301:832)
        padding: EdgeInsets.fromLTRB(18 * fem, 34 * fem, 18 * fem, 301.08 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff041e42),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // hoyaallowancehXm (301:833)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 95 * fem),
              child: Text(
                'hoya allowance',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Outfit',
                  fontSize: 25 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.26 * ffem / fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              // frame37250CzK (324:627)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame37249kW3 (324:626)
                    margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 8 * fem, 40 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame37248VCj (324:624)
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20.7 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
							  SizedBox(
							  width: 104.5 * fem,
							  height: 74.8 * fem,
								child:
							  Card(
								child: Image.network(widget.logo_url),
							  )),
                              Container(
                                // howmuchallowancedoyouwanttouse (301:839)
                                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 18 * fem),
                                constraints: BoxConstraints(
                                  maxWidth: 338 * fem,
                                ),
                                child: Text(
                                  'How much allowance do you want to use?',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Outfit',
                                    fontSize: 26.4000015259 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.26 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Container(
                                // jFV (324:505)
                                margin: EdgeInsets.fromLTRB(0.53 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  '\$${widget.allowanceToSpend.toStringAsFixed(2)}',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 87.7027130127 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
						Card(
						  child: Slider(
							value: widget.allowanceToSpend,
							min: 0.0,
							max: widget.maxAllowanceAmount,
							onChanged: (newValue) {
							  setState(() {
								widget.allowanceToSpend = newValue;
							  });
							},
						  ),
						),
                      ],
                    ),
                  ),
                  Container(
                    // payYTq (324:515)
                    width: double.infinity,
                    height: 99.22 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.4576263428 * fem),
                    ),
                    child: TextButton(
                      // sendbuttonh5q (324:516)
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(76.21 * fem, 7.26 * fem, 62.79 * fem, 7.26 * fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x7f1900ff),
                          borderRadius: BorderRadius.circular(18.4576263428 * fem),
                          border: Border(),
                        ),
                        child: Text(
                          'continue',
                          style: SafeGoogleFont(
                            'Outfit',
                            fontSize: 54.4499931335 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.26 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

