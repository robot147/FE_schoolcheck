// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loginPageHash() => r'f0f5c1ca227f1dfef8d795225ba616590d81b17e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$LoginPage
    extends BuildlessAutoDisposeAsyncNotifier<UserData?> {
  late final int page;

  FutureOr<UserData?> build({
    required int page,
  });
}

/// See also [LoginPage].
@ProviderFor(LoginPage)
const loginPageProvider = LoginPageFamily();

/// See also [LoginPage].
class LoginPageFamily extends Family<AsyncValue<UserData?>> {
  /// See also [LoginPage].
  const LoginPageFamily();

  /// See also [LoginPage].
  LoginPageProvider call({
    required int page,
  }) {
    return LoginPageProvider(
      page: page,
    );
  }

  @override
  LoginPageProvider getProviderOverride(
    covariant LoginPageProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'loginPageProvider';
}

/// See also [LoginPage].
class LoginPageProvider
    extends AutoDisposeAsyncNotifierProviderImpl<LoginPage, UserData?> {
  /// See also [LoginPage].
  LoginPageProvider({
    required int page,
  }) : this._internal(
          () => LoginPage()..page = page,
          from: loginPageProvider,
          name: r'loginPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$loginPageHash,
          dependencies: LoginPageFamily._dependencies,
          allTransitiveDependencies: LoginPageFamily._allTransitiveDependencies,
          page: page,
        );

  LoginPageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  FutureOr<UserData?> runNotifierBuild(
    covariant LoginPage notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(LoginPage Function() create) {
    return ProviderOverride(
      origin: this,
      override: LoginPageProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<LoginPage, UserData?>
      createElement() {
    return _LoginPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LoginPageProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin LoginPageRef on AutoDisposeAsyncNotifierProviderRef<UserData?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _LoginPageProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<LoginPage, UserData?>
    with LoginPageRef {
  _LoginPageProviderElement(super.provider);

  @override
  int get page => (origin as LoginPageProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
