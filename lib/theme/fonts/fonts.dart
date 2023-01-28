import 'package:flutter/material.dart';
import 'package:sluggard/theme/app_theme.dart';

class AppHeader extends StatelessWidget {
  final String value;
const AppHeader({ Key? key, required this.value }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Text(value, style: TextStyle(color: AppTheme.darkTheme.primaryColor, fontSize: 22, fontWeight: FontWeight.bold),);
  }
}