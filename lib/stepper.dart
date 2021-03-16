import 'package:flutter/material.dart';

class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int stepperIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stepper(
        currentStep: stepperIndex,
        onStepContinue: () {
          setState(() {
            stepperIndex += 1;
          });
        },
        onStepCancel: () => setState(() => stepperIndex--),
        onStepTapped: (int newStepIndex) {
          setState(() {
            stepperIndex = newStepIndex;
          });
        },
        steps: <Step>[
          Step(
            isActive: true,
            state: StepState.complete,
            title: Text("1. Sürücü Bilgisi"),
            content: Text("Sürücü detayları"),
          ),
          Step(
            state: StepState.disabled,
            title: Text("2. Sürücü Bilgisi"),
            content: Text("Sürücü detayları"),
          ),
          Step(
            state: StepState.error,
            title: Text("Vaka bilgileri"),
            content: Text("Detaylar"),
          ),
        ],
      ),
    );
  }
}
