import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import 'detalhes_model.dart';
export 'detalhes_model.dart';

class DetalhesWidget extends StatefulWidget {
  const DetalhesWidget({
    super.key,
    required this.nomeHeroi,
  });

  final String? nomeHeroi;

  static String routeName = 'DETALHES';
  static String routePath = '/detalhes';

  @override
  State<DetalhesWidget> createState() => _DetalhesWidgetState();
}

class _DetalhesWidgetState extends State<DetalhesWidget> {
  late DetalhesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalhesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult38n = await ApiHeroCall.call(
        name: widget!.nomeHeroi,
      );

      if ((_model.apiResult38n?.succeeded ?? true)) {
        FFAppState().name = widget!.nomeHeroi!;
        FFAppState().intelligence = getJsonField(
          (_model.apiResult38n?.jsonBody ?? ''),
          r'''$.results[0].powerstats.intelligence''',
        ).toString().toString();
        FFAppState().speed = getJsonField(
          (_model.apiResult38n?.jsonBody ?? ''),
          r'''$.results[0].powerstats.speed''',
        ).toString().toString();
        FFAppState().strength = getJsonField(
          (_model.apiResult38n?.jsonBody ?? ''),
          r'''$.results[0].powerstats.strength''',
        ).toString().toString();
        FFAppState().combat = getJsonField(
          (_model.apiResult38n?.jsonBody ?? ''),
          r'''$.results[0].powerstats.combat''',
        ).toString().toString();
        safeSetState(() {});
      } else {
        return;
      }
    });
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryText,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (getJsonField(
                  (_model.apiResult38n?.jsonBody ?? ''),
                  r'''$.results[0].image.url''',
                ) !=
                null)
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Stack(
                    children: [
                      if (getJsonField(
                            (_model.apiResult38n?.jsonBody ?? ''),
                            r'''$.results[0].image.url''',
                          ) !=
                          null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.network(
                            getJsonField(
                              (_model.apiResult38n?.jsonBody ?? ''),
                              r'''$.results[0].image.url''',
                            ).toString(),
                            width: 389.7,
                            height: 467.82,
                            fit: BoxFit.fill,
                          ),
                        ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.95),
                        child: Container(
                          width: 349.55,
                          height: 395.5,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      if (getJsonField(
                            (_model.apiResult38n?.jsonBody ?? ''),
                            r'''$.results[0].image.url''',
                          ) !=
                          null)
                        Align(
                          alignment: AlignmentDirectional(0, 0.12),
                          child: Container(
                            width: 300,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  offset: Offset(
                                    0,
                                    2,
                                  ),
                                )
                              ],
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 185.51,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(0),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        FFAppState().name,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
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
                                      if (getJsonField(
                                            (_model.apiResult38n?.jsonBody ??
                                                ''),
                                            r'''$.results[0].image.url''',
                                          ) !=
                                          null)
                                        Text(
                                          'Editora: ${getJsonField(
                                            (_model.apiResult38n?.jsonBody ??
                                                ''),
                                            r'''$.results[0].biography.publisher''',
                                          ).toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
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
                                    ],
                                  ),
                                ),
                                if (getJsonField(
                                      (_model.apiResult38n?.jsonBody ?? ''),
                                      r'''$.results[0].image.url''',
                                    ) !=
                                    null)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 5, 0, 5),
                                    child: Container(
                                      width: 100,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 5,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: AlignmentDirectional(0, 0),
                                        child: Text(
                                          ((String forca,
                                                      String velocidade,
                                                      String inteligencia,
                                                      String combate) {
                                            return (double.parse(forca == "null"
                                                        ? "0"
                                                        : forca) +
                                                    double.parse(
                                                        velocidade == "null"
                                                            ? "0"
                                                            : velocidade) +
                                                    double.parse(
                                                        inteligencia == "null"
                                                            ? "0"
                                                            : inteligencia) +
                                                    double.parse(
                                                        combate == "null"
                                                            ? "0"
                                                            : combate)) /
                                                4;
                                          }(
                                                  getJsonField(
                                                    (_model.apiResult38n
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.results[0].powerstats.strength''',
                                                  ).toString(),
                                                  getJsonField(
                                                    (_model.apiResult38n
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.results[0].powerstats.speed''',
                                                  ).toString(),
                                                  getJsonField(
                                                    (_model.apiResult38n
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.results[0].powerstats.intelligence''',
                                                  ).toString(),
                                                  getJsonField(
                                                    (_model.apiResult38n
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.results[0].powerstats.combat''',
                                                  ).toString()))
                                              .toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 25,
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
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      Align(
                        alignment: AlignmentDirectional(-0.07, 0.32),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'FORÇA',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 5, 0),
                                child: LinearPercentIndicator(
                                  percent: (String var1) {
                                    return (double.parse(
                                            var1 == "null" ? "0" : var1)) /
                                        100;
                                  }(FFAppState().strength),
                                  lineHeight: 25,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    ((String var1) {
                                      return double.parse(
                                          var1 == "null" ? "0" : var1);
                                    }(FFAppState().strength))
                                        .toString(),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.07, 0.46),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'VELOCIDADE',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                child: LinearPercentIndicator(
                                  percent: (String var1) {
                                    return (double.parse(
                                            var1 == "null" ? "0" : var1)) /
                                        100;
                                  }(getJsonField(
                                    (_model.apiResult38n?.jsonBody ?? ''),
                                    r'''$.results[0].powerstats.speed''',
                                  ).toString()),
                                  lineHeight: 25,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    ((String var1) {
                                      return double.parse(
                                          var1 == "null" ? "0" : var1);
                                    }(getJsonField(
                                      (_model.apiResult38n?.jsonBody ?? ''),
                                      r'''$.results[0].powerstats.speed''',
                                    ).toString()))
                                        .toString(),
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.1, 0.61),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'INTELIGENCIA',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 5, 0),
                                child: LinearPercentIndicator(
                                  percent: (String var1) {
                                    return (double.parse(
                                            var1 == "null" ? "0" : var1)) /
                                        100;
                                  }(getJsonField(
                                    (_model.apiResult38n?.jsonBody ?? ''),
                                    r'''$.results[0].powerstats.intelligence''',
                                  ).toString()),
                                  lineHeight: 25,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    ((String var1) {
                                      return double.parse(
                                          var1 == "null" ? "0" : var1);
                                    }(getJsonField(
                                      (_model.apiResult38n?.jsonBody ?? ''),
                                      r'''$.results[0].powerstats.intelligence''',
                                    ).toString()))
                                        .toString(),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.12, 0.76),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  'COMBATE',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 5, 0),
                                child: LinearPercentIndicator(
                                  percent: (String var1) {
                                    return (double.parse(
                                            var1 == "null" ? "0" : var1)) /
                                        100;
                                  }(getJsonField(
                                    (_model.apiResult38n?.jsonBody ?? ''),
                                    r'''$.results[0].powerstats.combat''',
                                  ).toString()),
                                  lineHeight: 25,
                                  animation: true,
                                  animateFromLastPercent: true,
                                  progressColor:
                                      FlutterFlowTheme.of(context).primary,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent4,
                                  center: Text(
                                    ((String var1) {
                                      return double.parse(
                                          var1 == "null" ? "0" : var1);
                                    }(getJsonField(
                                      (_model.apiResult38n?.jsonBody ?? ''),
                                      r'''$.results[0].powerstats.combat''',
                                    ).toString()))
                                        .toString(),
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineSmall
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                  ),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.02, 0.92),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(BoasVindasWidget.routeName);
                          },
                          text: 'Buscar novo herói',
                          icon: Icon(
                            Icons.manage_search,
                            size: 30,
                          ),
                          options: FFButtonOptions(
                            height: 40,
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            iconPadding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: Color(0xFF0C446F),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  font: GoogleFonts.interTight(
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
                            elevation: 0,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.84, -0.96),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(PesquisaWidget.routeName);
                          },
                          child: Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color(0x800C446F),
                              shape: BoxShape.circle,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.angleLeft,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 50,
                                ),
                              ],
                            ),
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
    );
  }
}
