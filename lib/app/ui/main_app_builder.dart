import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_work_with_api/app/di/init_di.dart';
import 'package:flutter_work_with_api/app/ui/root_screen.dart';
import 'package:flutter_work_with_api/feature/auth/domain/auth_repository.dart';
import 'package:flutter_work_with_api/feature/operations/domain/operation_repo.dart';
import 'package:flutter_work_with_api/feature/operations/domain/state/cubit/operation_cubit.dart';

import '../../feature/auth/domain/auth_state/auth_cubit.dart';
import '../domain/app_builder.dart';

class MainAppBuilder implements AppBuilder {
  @override
  Widget buildApp() {
    return const _GlobalProviders(
      child: MaterialApp(home: RootScreen()),
    );
  }
}

class _GlobalProviders extends StatelessWidget {
  const _GlobalProviders({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => locator.get<AuthCubit>(),
      ),
      BlocProvider(
        create: (context) => OperationCubit(
            locator.get<OperationRepo>(), locator.get<AuthCubit>())
          ..fetchOperations(),
      )
    ], child: child);
  }
}
