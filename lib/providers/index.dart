import 'package:projects/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AppProviders {
  static List<SingleChildWidget> get providers{
    return [
      ChangeNotifierProvider(create: (_) => ThemeProvider())
    ];
  }
}