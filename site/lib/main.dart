import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:site/custom_dot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      color: Colors.black,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final String fontFamilyDefault = "Open Sans";

  int page = 0;

  void _setPage(int number) {
    setState(() {
      page = number;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Material(
      color: Colors.black,
      child: Row(
        children: [
          Container(
            color: const Color.fromRGBO(11, 11, 11, 1),
            width: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomDot(
                  isClicked: page == 0,
                  onTap: () {
                    _setPage(0);
                  },
                ),
                const SizedBox(height: 2),
                CustomDot(
                  isClicked: page == 1,
                  onTap: () {
                    _setPage(1);
                  },
                ),
                const SizedBox(height: 2),
                CustomDot(
                  isClicked: page == 2,
                  onTap: () {
                    _setPage(2);
                  },
                ),
                const SizedBox(height: 2),
                CustomDot(
                  isClicked: page == 3,
                  onTap: () {
                    _setPage(3);
                  },
                ),
                /*Visibility(
                  visible: page == 0,
                  replacement: GestureDetector(
                    onTap: () {
                      _setPage(0);
                    },
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromRGBO(61, 61, 61, 1),
                      ),
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: const Color.fromRGBO(61, 61, 61, 1),
                            width: 2,
                          ),
                        ),
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Visibility(
                  visible: page == 1,
                  replacement: GestureDetector(
                    onTap: () {
                      _setPage(0);
                    },
                    child: ,
                  ),
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color.fromRGBO(61, 61, 61, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(61, 61, 61, 1),
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color.fromRGBO(61, 61, 61, 1),
                  ),
                ),*/
              ],
            ),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/images/uedercardoso.jpeg", scale: 1.30), //1.50
								Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.transparent, //Colors.green,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.transparent, //Colors.purple,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Column(
																					mainAxisAlignment: MainAxisAlignment.center,
																					children: [
																						Align(
																							alignment: Alignment.centerLeft,
																							child: Text("Ueder Cardoso", 
																								style: TextStyle(
																									color: Colors.white, 
																									fontSize: 72, 
																									fontFamily: fontFamilyDefault, 
																									fontStyle: FontStyle.normal, 
																									fontWeight: FontWeight.bold,
																								),
																							),
																						),
																						Align(
																							alignment: Alignment.center,
																							child: Container(
																								color: Colors.transparent,
																								width: 400,
																								height: 100,
																								child: const Column(
																									children: [
																										Align(
																											alignment: Alignment.topLeft,
																											child: Icon(Icons.format_quote, color: Colors.white, size: 25),
																										),
																										Row(
																											mainAxisAlignment: MainAxisAlignment.center,
																											children: [
																												Padding(
																													padding: EdgeInsets.only(bottom: 8),
																													child: Flexible(
																														child: Text("Resilience is the best path to take\nto succeed in entrepreneuship.",
																															maxLines: 3,
																															style: TextStyle(
																																color: Colors.white,
																																fontFamily: "Open Sans",
																																fontSize: 20,
																																height: 1.25,
																																fontWeight: FontWeight.normal,
																																fontStyle: FontStyle.normal,
																															)
																														),
																													),
																												),
																												SizedBox(width: 4),
																												Align(
																													alignment: Alignment.bottomRight,
																													child: Icon(Icons.format_quote, color: Colors.white, size: 25),
																												),
																											],
																										),																									],
																								),
																							),
																						),
																					],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: Colors.transparent, //Colors.red,
                          height: 150,
													child: Row(
														mainAxisAlignment: MainAxisAlignment.spaceAround,
														children: [
															IntrinsicWidth(
																child: Container(
																	color: Colors.transparent,
																	child: Column(
																		mainAxisAlignment: MainAxisAlignment.center,
																		children: [
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Text("01. Failures",
																					maxLines: 1,
																					textAlign: TextAlign.left,
																					style: TextStyle(
																						color: Colors.white,
																						fontFamily: "Open Sans",
																						fontSize: 20,
																						height: 1.25,
																						fontWeight: FontWeight.normal,
																						fontStyle: FontStyle.normal,
																					)
																				),
																			),
																			const SizedBox(height: 8),
																			Align(
																				alignment: Alignment.topLeft,
																				child: Container(
																					width: 75,
																					height: 4,
																					decoration: BoxDecoration(
																						color: const Color.fromRGBO(60, 60, 60, 1),
																						borderRadius: BorderRadius.circular(25),
																					),
																				),
																			),
																			const SizedBox(height: 8),
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Flexible(
																					child: Text("Failures are importante\nin life, they give you direction",
																						maxLines: 2,
																						style: TextStyle(
																							color: Colors.white,
																							fontFamily: "Open Sans",
																							fontSize: 15,
																							height: 1.25,
																							fontWeight: FontWeight.normal,
																							fontStyle: FontStyle.normal,
																						)
																					),
																				),
																			),
																		],
																	),
																),
															),
															const SizedBox(width: 20),
															IntrinsicWidth(
																child: Container(
																	color: Colors.transparent,
																	child: Column(
																		mainAxisAlignment: MainAxisAlignment.center,
																		children: [
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Text("02. Journey",
																					maxLines: 1,
																					style: TextStyle(
																						color: Colors.white,
																						fontFamily: "Open Sans",
																						fontSize: 20,
																						height: 1.25,
																						fontWeight: FontWeight.normal,
																						fontStyle: FontStyle.normal,
																					)
																				),
																			),
																			const SizedBox(height: 8),
																			Align(
																				alignment: Alignment.topLeft,
																				child: Container(
																					width: 75,
																					height: 4,
																					decoration: BoxDecoration(
																						color: const Color.fromRGBO(60, 60, 60, 1),
																						borderRadius: BorderRadius.circular(25),
																					),
																				),
																			),
																			const SizedBox(height: 8),
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Flexible(
																					child: Text("Software development\nand entrepreneurship",
																						maxLines: 3,
																						style: TextStyle(
																							color: Colors.white,
																							fontFamily: "Open Sans",
																							fontSize: 15,
																							height: 1.25,
																							fontWeight: FontWeight.normal,
																							fontStyle: FontStyle.normal,
																						)
																					),
																				),
																			),
																		],
																	),
																),
															),
															const SizedBox(width: 20),
															IntrinsicWidth(
																child: Container(
																	color: Colors.transparent,
																	child: Column(
																		mainAxisAlignment: MainAxisAlignment.center,
																		children: [
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Text("03. Building OneScout",
																					maxLines: 1,
																					style: TextStyle(
																						color: Colors.white,
																						fontFamily: "Open Sans",
																						fontSize: 20,
																						height: 1.25,
																						fontWeight: FontWeight.normal,
																						fontStyle: FontStyle.normal,
																					)
																				),
																			),
																			const SizedBox(height: 8),
																			Align(
																				alignment: Alignment.topLeft,
																				child: Container(
																					width: 75,
																					height: 4,
																					decoration: BoxDecoration(
																						color: const Color.fromRGBO(60, 60, 60, 1),
																						borderRadius: BorderRadius.circular(25),
																					),
																				),
																			),
																			const SizedBox(height: 8),
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Flexible(
																					child: Text("The reasons I\ncreated the OneScout",
																						maxLines: 2,
																						style: TextStyle(
																							color: Colors.white,
																							fontFamily: "Open Sans",
																							fontSize: 15,
																							height: 1.25,
																							fontWeight: FontWeight.normal,
																							fontStyle: FontStyle.normal,
																						)
																					),
																				),
																			),
																		],
																	), 
																),
															),
															const SizedBox(width: 20),
															IntrinsicWidth(
																child: Container(
																	color: Colors.transparent,
																	child: Column(
																		mainAxisAlignment: MainAxisAlignment.center,
																		children: [
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Text("04. One-Person Unicorn",
																					maxLines: 1,
																					style: TextStyle(
																						color: Colors.white,
																						fontFamily: "Open Sans",
																						fontSize: 20,
																						height: 1.25,
																						fontWeight: FontWeight.normal,
																						fontStyle: FontStyle.normal,
																					)
																				),
																			),
																			const SizedBox(height: 8),
																			Align(
																				alignment: Alignment.topLeft,
																				child: Container(
																					width: 75,
																					height: 4,
																					decoration: BoxDecoration(
																						color: const Color.fromRGBO(60, 60, 60, 1),
																						borderRadius: BorderRadius.circular(25),
																					),
																				),
																			),
																			const SizedBox(height: 8),
																			const Align(
																				alignment: Alignment.topLeft,
																				child: Flexible(
																					child: Text("The reason for wanting\nto be the first one-person unicorn",
																						maxLines: 2,
																						style: TextStyle(
																							color: Colors.white,
																							fontFamily: "Open Sans",
																							fontSize: 15,
																							height: 1.25,
																							fontWeight: FontWeight.normal,
																							fontStyle: FontStyle.normal,
																						)
																					),
																				),
																			),
																		],
																	),
																),
															),
														],
													),
                        ),
                      ],
                    ),
                  ),
                ),
								Align(
									alignment: Alignment.topLeft,
									child: Container(
										padding: const EdgeInsets.all(25),
										color: Colors.black,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.center,
											children: [
												Text("Home", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: fontFamilyDefault, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal)),
												const SizedBox(width: 16),
												Text("News", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: fontFamilyDefault, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal)),
												const SizedBox(width: 16),
												Text("Notes", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: fontFamilyDefault, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal)),
												const SizedBox(width: 16),
												Text("About Us", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: fontFamilyDefault, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal)),
											],
										),
									),
								),
							],
            ),
					),
        ],
      ),
    );
  }
}
