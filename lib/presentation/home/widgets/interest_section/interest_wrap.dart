import 'package:celebreak_project/presentation/home/widgets/interest_section/interest_container.dart';
import 'package:flutter/material.dart';

class InterestsWrap extends StatefulWidget {
  const InterestsWrap({super.key, required this.interests});
  final List<String> interests;

  @override
  State<InterestsWrap> createState() => _InterestsWrapState();
}

class _InterestsWrapState extends State<InterestsWrap> {
  static const int _maxVisible = 6;
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final bool needsToggle = widget.interests.length > _maxVisible;
    final int hiddenCount = widget.interests.length - _maxVisible;

    final List<String> visible = (!_expanded && needsToggle)
        ? widget.interests.take(_maxVisible).toList()
        : widget.interests;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Interested In', style: TextStyle(fontSize: 14)),
        SizedBox(height: 16),
        Wrap(
          spacing: 4,
          runSpacing: 4,
          children: [
            ...visible.map((txt) => InterestContainer(label: txt)),
            if (!_expanded && needsToggle)
              InterestContainer(label: '+$hiddenCount'),
          ],
        ),

        if (needsToggle)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: GestureDetector(
              onTap: () => setState(() => _expanded = !_expanded),
              child: Text(
                _expanded ? 'Show less' : 'See more',
                style: const TextStyle(
                  color: Color(0xFFFFB900),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
