import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'terms_conditions_model.dart';
export 'terms_conditions_model.dart';

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({super.key});

  static String routeName = 'termsConditions';
  static String routePath = '/termsConditions';

  @override
  State<TermsConditionsWidget> createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  late TermsConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsConditionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).info,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Text(
                'Help Center',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.poppins(
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SmartCal: Terms and Conditions',
                                  style: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                ),
                                Text(
                                  '1. Introduction\nWelcome to SmartCal, a calorie labeling display and food nutrition analysis system designed for users in Quezon City fast food chains. By using our application and services (collectively referred to as \"Services\"), you agree to these Terms and Conditions. Please read them carefully.\n\nIf you do not agree to these terms, you may not use the SmartCal Services.\n\n2. Use of Services\nEligibility: You must be at least 18 years old to use the SmartCal Services. By using the Services, you represent and warrant that you meet this age requirement and agree to abide by these Terms.\n\nAccount Registration\nTo use certain features of the Services, you must register an account with SmartCal. You agree to provide accurate and current information and keep your account secure. You are responsible for maintaining the confidentiality of your password and for all activities that occur under your account.\n\nProhibited Uses\nBy using the SmartCal Services, you agree that you will not:\n\n    • Use the Services for any illegal or unauthorized purpose.\n    • Violate any local, state, national, or international laws while using the Services.\n    • Attempt to interfere with or compromise the integrity of the SmartCal app, systems, or network.\n    • Use automated tools or bots to interact with the Services.\n    • Collect or store personal data about other users without their consent.\n\n3. Content and Intellectual Property\nUser-Generated Content\nSmartCal allows users to submit reviews, feedback, and other forms of content. By submitting content, you grant SmartCal a non-exclusive, royalty-free, perpetual, and worldwide license to use, display, modify, and distribute your content.\n\nYou represent that you own or have the rights to the content you submit and that it does not violate any third-party rights or applicable laws.\n\nSmartCal Intellectual Property\nAll content provided by SmartCal, including but not limited to text, graphics, logos, icons, images, and software, is the property of SmartCal or its licensors and is protected by copyright, trademark, and other intellectual property laws.\n\nYou may not reproduce, distribute, modify, create derivative works from, or otherwise exploit any part of the Services without prior written consent from SmartCal.\n\n4. Health Disclaimer\nThe nutritional and dietary information provided by SmartCal is for informational purposes only. While we strive for accuracy, we do not guarantee that all data is correct or complete.\n\nSmartCal is not a substitute for professional medical advice or treatment. Always consult with a qualified healthcare provider regarding your nutritional needs, especially if you have any medical conditions or specific dietary requirements.\n\n5. Limitation of Liability\nTo the maximum extent permitted by applicable law, SmartCal and its affiliates will not be liable for any indirect, incidental, special, or consequential damages, including but not limited to damages for loss of profits, use, or data, arising from:\n\n    • Your use of or inability to use the Services.\nAny errors or inaccuracies in the nutritional information provided.\n    • Unauthorized access to or use of your account or data.\n    • SmartCal’s total liability, under any circumstance, will not exceed the amount paid by you (if any) for the use of the Services.\n\n6. Privacy Policy\nYour privacy is important to us. Please refer to the SmartCal Privacy Policy for information on how we collect, use, and protect your personal data.\n\nBy using the SmartCal Services, you consent to the collection and use of your information as outlined in the Privacy Policy.\n\n7. Termination\nSmartCal reserves the right to suspend or terminate your access to the Services at any time, with or without notice, for any reason, including violation of these Terms and Conditions or any applicable law.\n\nUpon termination, all licenses and other rights granted to you in these Terms will immediately cease.\n\n8. Modifications to the Terms\nWe may modify these Terms and Conditions at any time. Any changes will be effective immediately upon posting. It is your responsibility to review these Terms regularly. Your continued use of the Services after any modifications constitute your acceptance of the new terms.\n\n9. Third-Party Services\nThe SmartCal Services may contain links to third-party websites, apps, or services that are not owned or controlled by SmartCal. We are not responsible for the content or practices of third-party services and do not endorse them. You access these services at your own risk.\n\n10. Governing Law and Dispute Resolution\nThese Terms and Conditions will be governed by and construed in accordance with the laws of the Philippines, without regard to its conflict of law principles.\n\nAny disputes arising from the use of SmartCal Services shall be resolved through amicable discussions. If the dispute cannot be resolved, it will be submitted to the competent courts of Quezon City.\n\n11. Contact Us\nIf you have any questions or concerns about these Terms and Conditions, please contact us at:\n\nEmail: smartcal.business@gmail.com',
                                  textAlign: TextAlign.justify,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.poppins(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 24.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'SmartCal',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Version 1.0',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.poppins(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          fontSize: 12.0,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                ].divide(SizedBox(width: 2.0)),
                              ),
                              Text(
                                'Copyright 2024, SmartCal. All rights reserved.',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 24.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
