// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class FormWidgetsDemo extends StatefulWidget {
  const FormWidgetsDemo({super.key});

  @override
  State<FormWidgetsDemo> createState() => _FormWidgetsDemoState();
}

class _FormWidgetsDemoState extends State<FormWidgetsDemo> {
  String title = '';
  String description = '';
  DateTime date = DateTime.now();
  double maxValue = 0;
  bool? brushedTeeth = false;
  bool enableFeature = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form widgets')),
      body: Card(
        child: 
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              children: [
                
                    Text(
                      intl.NumberFormat.currency(
                        symbol: "\$",
                        decimalDigits: 0,
                      ).format(maxValue)
                    ),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 100,
                      value: maxValue,
                      onChanged: (value) {
                        setState(() {
                          maxValue = value;
                        });
                      },
                    ),
                  
                
                Switch(
                  value: enableFeature,
                  onChanged: (enabled) {
                    setState(() {
                      enableFeature = enabled;
                    });
                  },
                ),
              ],
            ),
          ),
      ),
    );
  }
}


