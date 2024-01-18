// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$memberPageHash() => r'e210535f54c8fb95056708e906bcd291bb538350';

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

abstract class _$MemberPage
    extends BuildlessAutoDisposeAsyncNotifier<MemberData?> {
  late final int page;

  FutureOr<MemberData?> build({
    required int page,
  });
}

/// See also [MemberPage].
@ProviderFor(MemberPage)
const memberPageProvider = MemberPageFamily();

/// See also [MemberPage].
class MemberPageFamily extends Family<AsyncValue<MemberData?>> {
  /// See also [MemberPage].
  const MemberPageFamily();

  /// See also [MemberPage].
  MemberPageProvider call({
    required int page,
  }) {
    return MemberPageProvider(
      page: page,
    );
  }

  @override
  MemberPageProvider getProviderOverride(
    covariant MemberPageProvider provider,
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
  String? get name => r'memberPageProvider';
}

/// See also [MemberPage].
class MemberPageProvider
    extends AutoDisposeAsyncNotifierProviderImpl<MemberPage, MemberData?> {
  /// See also [MemberPage].
  MemberPageProvider({
    required int page,
  }) : this._internal(
          () => MemberPage()..page = page,
          from: memberPageProvider,
          name: r'memberPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$memberPageHash,
          dependencies: MemberPageFamily._dependencies,
          allTransitiveDependencies:
              MemberPageFamily._allTransitiveDependencies,
          page: page,
        );

  MemberPageProvider._internal(
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
  FutureOr<MemberData?> runNotifierBuild(
    covariant MemberPage notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(MemberPage Function() create) {
    return ProviderOverride(
      origin: this,
      override: MemberPageProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<MemberPage, MemberData?>
      createElement() {
    return _MemberPageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MemberPageProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MemberPageRef on AutoDisposeAsyncNotifierProviderRef<MemberData?> {
  /// The parameter `page` of this provider.
  int get page;
}

class _MemberPageProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MemberPage, MemberData?>
    with MemberPageRef {
  _MemberPageProviderElement(super.provider);

  @override
  int get page => (origin as MemberPageProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
