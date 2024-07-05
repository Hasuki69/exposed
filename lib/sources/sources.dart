library Sources;

import 'platform_sources/platform_web.dart' if (dart.library.io) 'platform_sources/platform_io.dart';
export 'url_sources/url_strategy.dart' if (dart.library.html) 'url_sources/url_strategy_web.dart';

part 'platform_sources/platform_source.dart';
part 'url_sources/url_source.dart';
