import 'package:flutter/material.dart';
import 'package:mvvm_architecture/core/theme/app_colors.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/constants/app_links.dart';
import '../../../core/locale/locale_view_model.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/theme/theme_view_model.dart';
import '../../../data/models/home/menu/menu_model.dart';
import '../../../l10n/app_localizations.dart';
import '../../../shared/widgets/app_link_tile.dart';
import '../viewmodel/home_view_model.dart';
import '../../../app/app_routes.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<HomeViewModel>();
    final themeVM = context.watch<ThemeViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mad Aravind",
          style: AppTextStyles.title(context),
        ),
        backgroundColor: AppColors.primary(context),
        elevation: 0,
        actions: [
          PopupMenuButton<Locale>(
            icon: Icon(Icons.language),
            onSelected: (locale) {
              if (locale.languageCode == 'system') {
                context.read<LocaleViewModel>().setSystemLocale();
              } else {
                context.read<LocaleViewModel>().setLocale(locale);
              }
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: Locale('en'),
                child: Text('English'),
              ),
              const PopupMenuItem(
                value: Locale('ta'),
                child: Text('Tamil'),
              ),
              const PopupMenuItem(
                value: Locale('system'),
                child: Text('System'),
              ),
            ],
          ),

          PopupMenuButton<ThemeMode>(
            icon: Icon(
              themeVM.themeMode == ThemeMode.dark
                  ? Icons.dark_mode
                  : themeVM.themeMode == ThemeMode.light
                  ? Icons.light_mode
                  : Icons.settings,
            ),
            onSelected: (mode) => themeVM.setTheme(mode),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: ThemeMode.light,
                child: Text('Light Theme'),
              ),
              const PopupMenuItem(
                value: ThemeMode.dark,
                child: Text('Dark Theme'),
              ),
              const PopupMenuItem(
                value: ThemeMode.system,
                child: Text('System Theme'),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            children: [
              AboutMeSection(),
              MenuSection(
                title: "In Build",
                items: [
                  MenuItem(
                      icon: Icons.person_outline,
                      title: "Chat ",
                      subTitle: "UI with Websocket",
                      onTap: () => Navigator.pushReplacementNamed(context, AppRoutes.chat)
                  ),
                ],
              ),

            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary(context),
        onPressed: () {
          vm.logout();
          Navigator.pushReplacementNamed(context, AppRoutes.login);
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}


class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.about,
            style: AppTextStyles.title(context),
          ),
          const SizedBox(height: 12),

          Text(
            "I’m Aravind, a Flutter developer focused on building scalable mobile apps using clean MVVM architecture, Provider, and production-ready patterns.",
            style: AppTextStyles.subTitle(context),
          ),
          const SizedBox(height: 20),

          AppLinkTile(
            icon: Icons.article_outlined,
            title: "Medium",
            subtitle: "Read my technical blogs",
            onTap: () => _openLink(AppLinks.medium),
          ),
          const SizedBox(height: 12),

          AppLinkTile(
            icon: Icons.business_center_outlined,
            title: "LinkedIn",
            subtitle: "Connect with me professionally",
            onTap: () => _openLink(AppLinks.linkedin),
          ),
        ],
      ),
    );
  }
}

class MenuSection extends StatelessWidget {
  final String title;
  final List<MenuItem> items;

  const MenuSection({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ...items.map(
              (item) => ListTile(
            title: Text(item.title),
            subtitle: Text(item.subTitle),
            trailing: const Icon(Icons.arrow_forward_ios, size: 14),
            onTap: item.onTap,
          ),
        ),
      ],
    );
  }
}


