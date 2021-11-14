import 'package:flutter/material.dart';

bool showDef = false;

void changeShowDef(bool val) {
  showDef = val;
  debugPrint("CHANGING VALUE OF SHOWDEF FLAG TO $showDef!");
}

class SpatialRetraceDefinition extends StatefulWidget {
  const SpatialRetraceDefinition({Key key}) : super(key: key);

  @override
  _SpatialRetraceDefinitionState createState() =>
      _SpatialRetraceDefinitionState();
}

class _SpatialRetraceDefinitionState extends State<SpatialRetraceDefinition> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    if (showDef) {
      setState(() {
        isVisible = true;
        debugPrint("isVisible IS NOW $isVisible");
      });
    } else {
      setState(() {
        isVisible = false;
        debugPrint("isVisible IS NOW $isVisible");
      });
    }

    return Visibility(
      visible: isVisible,
      child: Text(
        "THIS IS THE DEFINITION OF SPATIAL RETRACE!",
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
        ),
      ),
    );
  }
}
