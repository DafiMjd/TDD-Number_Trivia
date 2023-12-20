import 'package:number_trivia/features/number_trivia/data/data.dart';
import 'package:number_trivia/features/number_trivia/domain/domain.dart';
import 'package:number_trivia/features/number_trivia/presentation/cubits/number_trivia_cubit.dart';

import 'core/core.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Number Trivia
  // Cubits
  sl.registerFactory(
    () => NumberTriviaCubit(
      inputConverter: sl(),
      getConcreteNumberTriviaUc: sl(),
      getRandomNumberTriviaUc: sl(),
    ),
  );
  // Use cases
  sl
    ..registerLazySingleton(() => GetConcreteNumberTriviaUc(repository: sl()))
    ..registerLazySingleton(() => GetRandomNumberTriviaUc(repository: sl()))
    // Core
    ..registerLazySingleton(() => InputConverter())
    // Repositories
    ..registerLazySingleton<NumberTriviaRepository>(
      () => NumberTriviaRepositoryImpl(
        remoteDataSource: sl(),
        localDataSource: sl(),
        networkInfo: sl(),
      ),
    )
    // Data sources
    ..registerLazySingleton<NumberTriviaRemoteDataSource>(
      () => NumberTriviaRemoteDataSourceImpl(dio: sl()),
    )
    ..registerLazySingleton<NumberTriviaLocalDataSource>(
      () => NumberTriviaLocalDataSourceImpl(isar: sl()),
    );

  // Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectionChecker: sl()),
  );

  // External
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [NumberTriviaMdlSchema],
    directory: dir.path,
  );
  sl
    ..registerLazySingleton(() => Dio())
    ..registerLazySingleton(() => isar)
    ..registerLazySingleton(() => InternetConnectionChecker());
}
