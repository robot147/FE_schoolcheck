// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpPageHash() => r'151473bfe1ae08f86f47be5a98c13e77c0cc4bee';

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

abstract class _$SignUpPage
    extends BuildlessAutoDisposeAsyncNotifier<UserData?> {
  late final int page;

  FutureOr<UserData?> build({
    required int page,
  });
}

/// See also [SignUpPage].
@ProviderFor(SignUpPage)
const signUpPageProvider = SignUpPageFamily();

/// See also [SignUpPage].
class SignUpPageFamily extends Family<AsyncValue<UserData?>> {
  /// See also [SignUpPage].
  const SignUpPageFamily();

  /// See also [SignUpPage].
  SignUpPageProvider call({
    required int page,
  }) {
    return SignUpPageProvider(
      page: page,
    );
  }

  @override
  SignUpPageProvider getProviderOverride(
    covariant SignUpPageProvider provider,
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
  String? get name => r'signUpPageProvider';
}

/// See also [SignUpPage].
class SignUpPageProvider
    extends AutoDisposeAsyncNotifierProviderImpl<SignUpPage, UserData?> {
  /// See also [SignUpPage].
  SignUpPageProvider({
    required int page,
  }) : this._internal(
          () => SignUpPage()..page = page,
          from: signUpPageProvider,
          name: r'signUpPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signUpPageHash,
          dependencies: SignUpPageFamily._dependencies,
          allTransitiveDependencies:
              SignUpPageFamily._allTransitiveDependencies,
          page: page,
        );

  SignUpPageProvider._internal(
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
    covariant SignUpPage notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(SignUpPage Function() create) {
    return ProviderOverride(
      origin: this,
      override: SignUpPageProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<SignUpPage, UserData?>
      createElement() {
    return _SignUpPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignUpPageProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SignUpPageRef on AutoDisposeAsyncNotifierProviderRef<UserData?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _SignUpPageProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<SignUpPage, UserData?>
    with SignUpPageRef {
  _SignUpPageProviderElement(super.provider);

  @override
  int get page => (origin as SignUpPageProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
