import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';

class OSHeader extends StatelessWidget {
  final VoidCallback onHomePressed;
  final VoidCallback onFinanceManagerPressed;
  final VoidCallback onPaintMasterPressed;
  final VoidCallback onAboutPressed;
  final VoidCallback onContactPressed;

  const OSHeader({
    super.key,
    required this.onHomePressed,
    required this.onFinanceManagerPressed,
    required this.onPaintMasterPressed,
    required this.onAboutPressed,
    required this.onContactPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 760;

        return Container(
          width: double.infinity,
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: isCompact ? OSSpacing.md : OSSpacing.xxl,
            vertical: OSSpacing.md,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1100),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: onHomePressed,
                      borderRadius: BorderRadius.circular(12),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: OSSpacing.sm,
                          vertical: OSSpacing.sm,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SvgPicture.asset(
                              'assets/brand/symbol.svg',
                              width: isCompact ? 42 : 48,
                              height: isCompact ? 42 : 48,
                            ),
                            const SizedBox(width: OSSpacing.sm),
                            Flexible(
                              child: Text(
                                'Otakar Šimek Apps',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: isCompact ? 16 : 18,
                                  fontWeight: FontWeight.w700,
                                  color: OSColors.navy,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  if (!isCompact) ...[
                    TextButton(
                      onPressed: onHomePressed,
                      child: const Text('Domů'),
                    ),
                    PopupMenuButton<String>(
                      tooltip: 'Aplikace',
                      onSelected: (value) {
                        if (value == 'finance_manager') {
                          onFinanceManagerPressed();
                        }

                        if (value == 'paintmaster') {
                          onPaintMasterPressed();
                        }
                      },
                      itemBuilder:
                          (context) => const [
                            PopupMenuItem(
                              value: 'finance_manager',
                              child: Text('Finance Manager'),
                            ),
                            PopupMenuItem(
                              value: 'paintmaster',
                              child: Text('PaintMaster'),
                            ),
                          ],
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: OSSpacing.md,
                          vertical: OSSpacing.sm,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Aplikace'),
                            SizedBox(width: 4),
                            Icon(Icons.keyboard_arrow_down, size: 18),
                          ],
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onAboutPressed,
                      child: const Text('O značce'),
                    ),
                    TextButton(
                      onPressed: onContactPressed,
                      child: const Text('Kontakt'),
                    ),
                  ] else
                    PopupMenuButton<String>(
                      tooltip: 'Menu',
                      icon: const Icon(Icons.menu, color: OSColors.navy),
                      onSelected: (value) {
                        switch (value) {
                          case 'home':
                            onHomePressed();
                            break;
                          case 'finance_manager':
                            onFinanceManagerPressed();
                            break;
                          case 'paintmaster':
                            onPaintMasterPressed();
                            break;
                          case 'about':
                            onAboutPressed();
                            break;
                          case 'contact':
                            onContactPressed();
                            break;
                        }
                      },
                      itemBuilder:
                          (context) => const [
                            PopupMenuItem(value: 'home', child: Text('Domů')),
                            PopupMenuDivider(),
                            PopupMenuItem(
                              value: 'finance_manager',
                              child: Text('Finance Manager'),
                            ),
                            PopupMenuItem(
                              value: 'paintmaster',
                              child: Text('PaintMaster'),
                            ),
                            PopupMenuDivider(),
                            PopupMenuItem(
                              value: 'about',
                              child: Text('O značce'),
                            ),
                            PopupMenuItem(
                              value: 'contact',
                              child: Text('Kontakt'),
                            ),
                          ],
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
