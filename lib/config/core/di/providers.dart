// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markett/features/wallet/presentation/cubit/wallet_cubit.dart';
import 'package:provider/single_child_widget.dart';

final allProviders = <SingleChildWidget>[
  BlocProvider(create: (_) => WalletCubit()),
];
