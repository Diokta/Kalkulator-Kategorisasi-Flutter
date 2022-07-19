import 'package:flutter/cupertino.dart';
import '../util/string_extensions.dart';

@immutable
class CategorizationViewModel {
  final String? namaVariabel;
  final String? jumlahResponden;
  final String? jumlahTotalSkor;
  final String? jumlahItemValid;
  final String? nilaiSkalaTerkecil;
  final String? nilaiSkalaTerbesar;
  final String? nilaiTengahSkala;

  CategorizationViewModel(
    this.namaVariabel,
    this.jumlahResponden,
    this.jumlahTotalSkor,
    this.jumlahItemValid,
    this.nilaiSkalaTerkecil,
    this.nilaiSkalaTerbesar,
    this.nilaiTengahSkala,
  );

  factory CategorizationViewModel.newCategorization() {
    return CategorizationViewModel(null, null, null, null, null, null, null);
  }

  bool get namaVariabelIsValid => namaVariabelValidator(namaVariabel) == null;

  bool get jumlahRespondenIsValid =>
      jumlahRespondenValidator(jumlahResponden) == null;

  bool get jumlahTotalSkorIsValid =>
      jumlahTotalSkorValidator(jumlahTotalSkor) == null;

  bool get jumlahItemValidIsValid =>
      jumlahItemValidValidator(jumlahItemValid) == null;

  bool get nilaiSkalaTerkecilIsValid =>
      nilaiSkalaTerkecilValidator(nilaiSkalaTerkecil) == null;

  bool get nilaiSkalaTerbesarIsValid =>
      nilaiSkalaTerbesarValidator(nilaiSkalaTerbesar) == null;

  bool get nilaiTengahSkalaIsValid =>
      nilaiTengahSkalaValidator(nilaiTengahSkala) == null;

  bool isValid() =>
      namaVariabelIsValid &&
      jumlahRespondenIsValid &&
      jumlahTotalSkorIsValid &&
      jumlahItemValidIsValid &&
      nilaiSkalaTerkecilIsValid &&
      nilaiSkalaTerbesarIsValid &&
      nilaiTengahSkalaIsValid;

  String? namaVariabelValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  String? jumlahRespondenValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  String? jumlahTotalSkorValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  String? jumlahItemValidValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  String? nilaiSkalaTerkecilValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  String? nilaiSkalaTerbesarValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  String? nilaiTengahSkalaValidator(String? s) {
    if (s == null || s.isWhitespace()) {
      return "Nama Variabel Harus Diisi";
    }
  }

  CategorizationViewModel copyWith({
    String? namaVariabel,
    String? jumlahResponden,
    String? jumlahTotalSkor,
    String? jumlahItemValid,
    String? nilaiSkalaTerkecil,
    String? nilaiSkalaTerbesar,
    String? nilaiTengahSkala,
  }) {
    return CategorizationViewModel(
      namaVariabel ?? this.namaVariabel,
      jumlahResponden ?? this.jumlahResponden,
      jumlahTotalSkor ?? this.jumlahTotalSkor,
      jumlahItemValid ?? this.jumlahItemValid,
      nilaiSkalaTerkecil ?? this.nilaiSkalaTerkecil,
      nilaiSkalaTerbesar ?? this.nilaiSkalaTerbesar,
      nilaiTengahSkala ?? this.nilaiTengahSkala,
    );
  }

  @override
  String toString() =>
      "CategorizationModel($namaVariabel, $jumlahResponden, $jumlahTotalSkor, $jumlahItemValid, $nilaiSkalaTerkecil, $nilaiSkalaTerbesar, $nilaiTengahSkala)";
}
