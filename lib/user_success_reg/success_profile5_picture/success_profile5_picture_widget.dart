import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'success_profile5_picture_model.dart';
export 'success_profile5_picture_model.dart';

class SuccessProfile5PictureWidget extends StatefulWidget {
  const SuccessProfile5PictureWidget({super.key});

  static String routeName = 'successProfile5-picture';
  static String routePath = '/successProfile5Picture';

  @override
  State<SuccessProfile5PictureWidget> createState() =>
      _SuccessProfile5PictureWidgetState();
}

class _SuccessProfile5PictureWidgetState
    extends State<SuccessProfile5PictureWidget> {
  late SuccessProfile5PictureModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SuccessProfile5PictureModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().bmiCategory =
                              functions.bmiCategory(FFAppState().bmi);
                          safeSetState(() {});
                          FFAppState().calorieStandard = 2000;
                          safeSetState(() {});
                          FFAppState().calorieLimit =
                              functions.calIntakeRecFunction(
                                  FFAppState().bmrComputed,
                                  FFAppState().activeLevel,
                                  FFAppState().objective,
                                  FFAppState().bodyCategory);
                          safeSetState(() {});
                          FFAppState().calorieRemaining =
                              FFAppState().calorieLimit;
                          safeSetState(() {});
                          FFAppState().bmiRemark =
                              functions.bmiMessage(FFAppState().bmiCategory);
                          FFAppState().bmiCategoryRemark = functions
                              .bmiCategoryRemark(FFAppState().bmiCategory);
                          safeSetState(() {});
                          FFAppState().age =
                              functions.calculateAge(FFAppState().birthdate!);
                          safeSetState(() {});

                          await UserProfileRecord.collection
                              .doc()
                              .set(createUserProfileRecordData(
                                user: currentUserReference,
                                firstName: FFAppState().firstName,
                                lastName: FFAppState().lastName,
                                userName: FFAppState().username,
                                sex: FFAppState().sex,
                                birthdate: FFAppState().birthdate,
                                bodyCategory: FFAppState().bodyCategory,
                                activtyLevel: FFAppState().activeLevel,
                                height: FFAppState().height,
                                weight: FFAppState().weight,
                                weightGoal: FFAppState().weightGoal,
                                userProfileImg:
                                    'https://www.pngitem.com/pimgs/m/579-5798505_user-placeholder-svg-hd-png-download.png',
                                userId: currentUserUid,
                                bmi: functions.calculateBMI(
                                    FFAppState().weight, FFAppState().height),
                                calorieStandard: 2000,
                                bmiCategory: FFAppState().bmiCategory,
                                calorieLimit: FFAppState().calorieLimit,
                                calorieRemaining: FFAppState().calorieRemaining,
                                age: valueOrDefault<int>(
                                  functions
                                      .calculateAge(FFAppState().birthdate!),
                                  0,
                                ),
                                objective: FFAppState().objective,
                                bmr: FFAppState().bmrComputed,
                                bmiRemark: functions.bmiCategoryRemark(
                                    FFAppState().bmiCategory),
                                dateTImeCreated: dateTimeFormat(
                                    "yMMMd", getCurrentTimestamp),
                                recentAct: 'Created Account',
                                activeStatus: 'Active',
                              ));

                          await ProgressRecord.collection
                              .doc()
                              .set(createProgressRecordData(
                                uid: currentUserReference,
                                newHeight: FFAppState().height,
                                newWeight: FFAppState().weight,
                                entryDate: getCurrentTimestamp,
                                newBMI: FFAppState().bmi,
                              ));
                          FFAppState().currentDate =
                              dateTimeFormat("yMd", getCurrentTimestamp);
                          FFAppState().currentW =
                              dateTimeFormat("yMd", getCurrentTimestamp);
                          safeSetState(() {});

                          await CalorieResetRecord.collection
                              .doc()
                              .set(createCalorieResetRecordData(
                                user: currentUserReference,
                                current: FFAppState().currentDate,
                              ));

                          await WaterResetRecord.collection
                              .doc()
                              .set(createWaterResetRecordData(
                                user: currentUserReference,
                                currentW:
                                    dateTimeFormat("yMd", getCurrentTimestamp),
                              ));
                          FFAppState().calorieLimit = FFAppState().calorieLimit;
                          FFAppState().calorieRemaining =
                              FFAppState().calorieRemaining;
                          safeSetState(() {});

                          context.pushNamed(
                              SuccessProfile6ConfirmationWidget.routeName);
                        },
                        child: Text(
                          'Skip',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add your profile picture!',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                        Text(
                          'Make it yours! Add a profile picture to personalize your experience.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                        ),
                        Text(
                          'Allowed files are in \n.PNG or .JPG format.',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FontStyle.italic,
                                  ),
                        ),
                        Stack(
                          alignment: AlignmentDirectional(-1.0, 1.0),
                          children: [
                            Container(
                              width: 200.0,
                              height: 200.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    _model.uploadedFileUrl_userProfileImage,
                                  ).image,
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1.0,
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              borderRadius: 60.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              fillColor: FlutterFlowTheme.of(context).primary,
                              icon: Icon(
                                Icons.add,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                final selectedMedia =
                                    await selectMediaWithSourceBottomSheet(
                                  context: context,
                                  allowPhoto: true,
                                );
                                if (selectedMedia != null &&
                                    selectedMedia.every((m) =>
                                        validateFileFormat(
                                            m.storagePath, context))) {
                                  safeSetState(() => _model
                                      .isDataUploading_userProfileImage = true);
                                  var selectedUploadedFiles =
                                      <FFUploadedFile>[];

                                  var downloadUrls = <String>[];
                                  try {
                                    showUploadMessage(
                                      context,
                                      'Uploading file...',
                                      showLoading: true,
                                    );
                                    selectedUploadedFiles = selectedMedia
                                        .map((m) => FFUploadedFile(
                                              name:
                                                  m.storagePath.split('/').last,
                                              bytes: m.bytes,
                                              height: m.dimensions?.height,
                                              width: m.dimensions?.width,
                                              blurHash: m.blurHash,
                                            ))
                                        .toList();

                                    downloadUrls = (await Future.wait(
                                      selectedMedia.map(
                                        (m) async => await uploadData(
                                            m.storagePath, m.bytes),
                                      ),
                                    ))
                                        .where((u) => u != null)
                                        .map((u) => u!)
                                        .toList();
                                  } finally {
                                    ScaffoldMessenger.of(context)
                                        .hideCurrentSnackBar();
                                    _model.isDataUploading_userProfileImage =
                                        false;
                                  }
                                  if (selectedUploadedFiles.length ==
                                          selectedMedia.length &&
                                      downloadUrls.length ==
                                          selectedMedia.length) {
                                    safeSetState(() {
                                      _model.uploadedLocalFile_userProfileImage =
                                          selectedUploadedFiles.first;
                                      _model.uploadedFileUrl_userProfileImage =
                                          downloadUrls.first;
                                    });
                                    showUploadMessage(context, 'Success!');
                                  } else {
                                    safeSetState(() {});
                                    showUploadMessage(
                                        context, 'Failed to upload data');
                                    return;
                                  }
                                }

                                FFAppState().userProfileImg =
                                    _model.uploadedFileUrl_userProfileImage;
                                safeSetState(() {});
                                FFAppState().bmiCategory =
                                    functions.bmiCategory(FFAppState().bmi);
                                safeSetState(() {});
                                FFAppState().calorieStandard = 2000;
                                safeSetState(() {});
                                FFAppState().calorieLimit =
                                    functions.calIntakeRecFunction(
                                        FFAppState().bmrComputed,
                                        FFAppState().activeLevel,
                                        FFAppState().objective,
                                        FFAppState().bodyCategory);
                                safeSetState(() {});
                                FFAppState().calorieRemaining =
                                    FFAppState().calorieLimit;
                                safeSetState(() {});
                                FFAppState().bmiRemark = functions
                                    .bmiMessage(FFAppState().bmiCategory);
                                FFAppState().bmiCategoryRemark =
                                    functions.bmiCategoryRemark(
                                        FFAppState().bmiCategory);
                                safeSetState(() {});
                                FFAppState().age = functions
                                    .calculateAge(FFAppState().birthdate!);
                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            FFAppState().bmiCategory =
                                functions.bmiCategory(FFAppState().bmi);
                            safeSetState(() {});
                            FFAppState().calorieStandard = 2000;
                            safeSetState(() {});
                            FFAppState().calorieLimit =
                                functions.calIntakeRecFunction(
                                    FFAppState().bmrComputed,
                                    FFAppState().activeLevel,
                                    FFAppState().objective,
                                    FFAppState().bodyCategory);
                            safeSetState(() {});
                            FFAppState().calorieRemaining =
                                FFAppState().calorieLimit;
                            safeSetState(() {});
                            FFAppState().bmiRemark =
                                functions.bmiMessage(FFAppState().bmiCategory);
                            FFAppState().bmiCategoryRemark = functions
                                .bmiCategoryRemark(FFAppState().bmiCategory);
                            safeSetState(() {});
                            FFAppState().age =
                                functions.calculateAge(FFAppState().birthdate!);
                            safeSetState(() {});

                            await UserProfileRecord.collection
                                .doc()
                                .set(createUserProfileRecordData(
                                  user: currentUserReference,
                                  firstName: FFAppState().firstName,
                                  lastName: FFAppState().lastName,
                                  userName: FFAppState().username,
                                  sex: FFAppState().sex,
                                  birthdate: FFAppState().birthdate,
                                  bodyCategory: FFAppState().bodyCategory,
                                  activtyLevel: FFAppState().activeLevel,
                                  height: FFAppState().height,
                                  weight: FFAppState().weight,
                                  weightGoal: FFAppState().weightGoal,
                                  userProfileImg:
                                      _model.uploadedFileUrl_userProfileImage,
                                  userId: currentUserUid,
                                  bmi: functions.calculateBMI(
                                      FFAppState().weight, FFAppState().height),
                                  calorieStandard: 2000,
                                  bmiCategory: FFAppState().bmiCategory,
                                  calorieLimit: FFAppState().calorieLimit,
                                  calorieRemaining:
                                      FFAppState().calorieRemaining,
                                  age: valueOrDefault<int>(
                                    functions
                                        .calculateAge(FFAppState().birthdate!),
                                    0,
                                  ),
                                  objective: FFAppState().objective,
                                  bmr: FFAppState().bmrComputed,
                                  bmiRemark: functions.bmiCategoryRemark(
                                      FFAppState().bmiCategory),
                                  dateTImeCreated: dateTimeFormat(
                                      "yMMMd", getCurrentTimestamp),
                                  recentAct: 'Created Account',
                                  activeStatus: 'Active',
                                ));

                            await ProgressRecord.collection
                                .doc()
                                .set(createProgressRecordData(
                                  uid: currentUserReference,
                                  newHeight: FFAppState().height,
                                  newWeight: FFAppState().weight,
                                  entryDate: getCurrentTimestamp,
                                  newBMI: FFAppState().bmi,
                                ));
                            FFAppState().currentDate =
                                dateTimeFormat("yMd", getCurrentTimestamp);
                            FFAppState().currentW =
                                dateTimeFormat("yMd", getCurrentTimestamp);
                            safeSetState(() {});

                            await CalorieResetRecord.collection
                                .doc()
                                .set(createCalorieResetRecordData(
                                  user: currentUserReference,
                                  current: FFAppState().currentDate,
                                ));

                            await WaterResetRecord.collection
                                .doc()
                                .set(createWaterResetRecordData(
                                  user: currentUserReference,
                                  currentW: dateTimeFormat(
                                      "yMd", getCurrentTimestamp),
                                ));
                            FFAppState().calorieLimit =
                                FFAppState().calorieLimit;
                            FFAppState().calorieRemaining =
                                FFAppState().calorieRemaining;
                            safeSetState(() {});

                            context.pushNamed(
                                SuccessProfile6ConfirmationWidget.routeName);
                          },
                          text: 'Next',
                          options: FFButtonOptions(
                            width: 100.0,
                            height: 60.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.poppins(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
