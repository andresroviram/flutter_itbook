import 'package:injectable/injectable.dart';

import '../../../../../core/services/services.dart';

abstract class ILoginDatasource {}

@Injectable(as: ILoginDatasource)
class LoginDatasource implements ILoginDatasource {
  LoginDatasource({
    required this.baseClient,
  });

  final BaseClient baseClient;
}
