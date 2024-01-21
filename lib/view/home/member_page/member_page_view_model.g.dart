// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member_page_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$memberPageHash() => r'bd5e60f0e6b205245c24868f8bea573762ddfba4';

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
  late final String memberId;

  Future<MemberData?> build(
    String memberId,
  );
}

/// See also [MemberPage].
@ProviderFor(MemberPage)
const memberPageProvider = MemberPageFamily();

/// See also [MemberPage].
class MemberPageFamily extends Family<AsyncValue<MemberData?>> {
  /// See also [MemberPage].
  const MemberPageFamily();

  /// See also [MemberPage].
  MemberPageProvider call(
    String memberId,
  ) {
    return MemberPageProvider(
      memberId,
    );
  }

  @override
  MemberPageProvider getProviderOverride(
    covariant MemberPageProvider provider,
  ) {
    return call(
      provider.memberId,
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
  MemberPageProvider(
    this.memberId,
  ) : super.internal(
          () => MemberPage()..memberId = memberId,
          from: memberPageProvider,
          name: r'memberPageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$memberPageHash,
          dependencies: MemberPageFamily._dependencies,
          allTransitiveDependencies:
              MemberPageFamily._allTransitiveDependencies,
        );

  final String memberId;

  @override
  bool operator ==(Object other) {
    return other is MemberPageProvider && other.memberId == memberId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, memberId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  Future<MemberData?> runNotifierBuild(
    covariant MemberPage notifier,
  ) {
    return notifier.build(
      memberId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
