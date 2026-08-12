import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';

class OSFooter extends StatelessWidget {
  const OSFooter({super.key});

  Future<void> _sendEmail() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'info@otakarsimek.cz',
    );

    await launchUrl(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8EEF7),
      padding: const EdgeInsets.symmetric(
        horizontal: OSSpacing.xxl,
        vertical: OSSpacing.xxl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isCompact = constraints.maxWidth < 700;

              return Column(
                children: [
                  if (isCompact)
                    Column(
                      children: [
                        _BrandBlock(
                          onEmailPressed: _sendEmail,
                        ),

                        const SizedBox(height: OSSpacing.xl),

                        _FooterLinks(
                          title: 'Aplikace',
                          children: [
                            _FooterLink(
                              text: 'Finance Manager',
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/finance-manager',
                                );
                              },
                            ),
                            _FooterLink(
                              text: 'PaintMaster',
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/paintmaster',
                                );
                              },
                            ),
                          ],
                        ),

                        const SizedBox(height: OSSpacing.xl),

                        _FooterLinks(
                          title: 'Informace',
                          children: [
                            _FooterLink(
                              text: 'Zásady ochrany soukromí',
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/privacy',
                                );
                              },
                            ),
                            _FooterLink(
                              text: 'Podmínky používání',
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  '/terms',
                                );
                              },
                            ),
                            _FooterLink(
                              text: 'Kontakt',
                              onPressed: _sendEmail,
                            ),
                          ],
                        ),
                      ],
                    )
                  else
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: _BrandBlock(
                            onEmailPressed: _sendEmail,
                          ),
                        ),

                        const SizedBox(width: OSSpacing.xxl),

                        Expanded(
                          child: _FooterLinks(
                            title: 'Aplikace',
                            children: [
                              _FooterLink(
                                text: 'Finance Manager',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/finance-manager',
                                  );
                                },
                              ),
                              _FooterLink(
                                text: 'PaintMaster',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/paintmaster',
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(width: OSSpacing.xl),

                        Expanded(
                          child: _FooterLinks(
                            title: 'Informace',
                            children: [
                              _FooterLink(
                                text: 'Zásady ochrany soukromí',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/privacy',
                                  );
                                },
                              ),
                              _FooterLink(
                                text: 'Podmínky používání',
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/terms',
                                  );
                                },
                              ),
                              _FooterLink(
                                text: 'Kontakt',
                                onPressed: _sendEmail,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  const SizedBox(height: OSSpacing.xxl),

                  Container(
                    width: double.infinity,
                    height: 1,
                    color: OSColors.border,
                  ),

                  const SizedBox(height: OSSpacing.lg),

                  Text(
                    '© 2026 Otakar Šimek Apps',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: OSColors.secondaryText,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _BrandBlock extends StatelessWidget {
  final VoidCallback onEmailPressed;

  const _BrandBlock({
    required this.onEmailPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Otakar Šimek Apps',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: OSColors.navy,
          ),
        ),

        const SizedBox(height: OSSpacing.sm),

        Text(
          'Poctivý software za poctivou cenu.',
          style: TextStyle(
            fontSize: 14,
            color: OSColors.secondaryText,
          ),
        ),

        const SizedBox(height: OSSpacing.md),

        InkWell(
          onTap: onEmailPressed,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.mail_outline,
                  size: 18,
                  color: OSColors.blue,
                ),
                const SizedBox(width: OSSpacing.sm),
                Text(
                  'info@otakarsimek.cz',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: OSColors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _FooterLinks extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _FooterLinks({
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: OSColors.navy,
          ),
        ),

        const SizedBox(height: OSSpacing.sm),

        ...children,
      ],
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const _FooterLink({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: OSColors.secondaryText,
        padding: const EdgeInsets.symmetric(
          vertical: 6,
        ),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.centerLeft,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}