import 'package:cartcraze/utils/constants/color.dart';
import 'package:flutter/material.dart';

class cartSettingMenuTile extends StatelessWidget {
  const cartSettingMenuTile({
    super.key,
    required this.icon,
    required this.text,
    required this.subTitle,
    this.trailing, this.onTap});

  final IconData icon;
  final String text, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: cartColor.primary,),
      title: Text(text, style: Theme.of(context).textTheme.titleMedium,),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium,),
      trailing: trailing,
      onTap: onTap,
    );
  }
}
