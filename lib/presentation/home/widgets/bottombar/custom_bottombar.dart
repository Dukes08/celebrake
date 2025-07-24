import 'package:celebreak_project/presentation/home/widgets/bottombar/bottombar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottombar extends StatelessWidget {
  const CustomBottombar({super.key, this.activeIndex = 0, required this.items});

  final int activeIndex;
  final List<BottomBarItem> items;

  @override
  Widget build(BuildContext context) {
    const active = Color(0xFFFFB900);
    const inactive = Color(0xFF6C6C70);

    return SafeArea(
      top: false,
      child: Container(
        height: 62,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(top: BorderSide(color: Color(0xFF2C2C2E), width: 0.5)),
        ),
        child: IgnorePointer(
          child: Row(
            children: List.generate(items.length, (i) {
              final selected = i == activeIndex;
              final item = items[i];

              return Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (item.iconPath != null)
                      SvgPicture.asset(
                        item.iconPath!,
                        width: 26,
                        height: 26,
                        color: selected ? active : inactive,
                      )
                    else
                      Icon(
                        item.iconData,
                        size: 26,
                        color: selected ? active : inactive,
                      ),
                    const SizedBox(height: 4),
                    Text(
                      item.label,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.w400,
                        color: selected ? active : inactive,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
