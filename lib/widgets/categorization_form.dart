import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:kalkulator/main.dart';
import 'package:kalkulator/models/Categorization_view_model.dart';
import 'package:kalkulator/pages/Calculate_page.dart';
import 'package:kalkulator/widgets/jumlah_item_valid_form_field.dart';
import 'package:kalkulator/widgets/jumlah_responden_form_field.dart';
import 'package:kalkulator/widgets/jumlah_total_skor_form_field.dart';
import 'package:kalkulator/widgets/nama_variabel_form_field.dart';
import 'package:kalkulator/widgets/navigation_drawer_widget.dart';
import 'package:kalkulator/widgets/nilai_skala_terbesar_form_field.dart';
import 'package:kalkulator/widgets/nilai_skala_terkecil_form_field.dart';
import 'package:kalkulator/widgets/nilai_tengah_skala_form_field.dart';

class CategorizationForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final ValueChanged<CategorizationViewModel> onChanged;
  final CategorizationViewModel viewModel;

  const CategorizationForm({
    Key? key,
    required this.formKey,
    required this.onChanged,
    required this.viewModel,
  }) : super(key: key);

  @override
  State<CategorizationForm> createState() => _CategorizationFormState();
}

class _CategorizationFormState extends State<CategorizationForm> {
  final namaVariabelFocus = FocusNode();
  final jumlahRespondenFocus = FocusNode();
  final jumlahTotalSkorFocus = FocusNode();
  final jumlahItemValidFocus = FocusNode();
  final nilaiSkalaTerkecilFocus = FocusNode();
  final nilaiSkalaTerbesarFocus = FocusNode();
  final nilaiTengahSkalaFocus = FocusNode();

  @override
  void dispose() {
    namaVariabelFocus.dispose();
    jumlahRespondenFocus.dispose();
    jumlahTotalSkorFocus.dispose();
    jumlahItemValidFocus.dispose();
    nilaiSkalaTerkecilFocus.dispose();
    nilaiSkalaTerbesarFocus.dispose();
    nilaiTengahSkalaFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NamaVariabelFormField(
            focusNode: namaVariabelFocus,
            nextFocusNode: jumlahRespondenFocus,
            onChanged: (s) =>
                widget.onChanged(widget.viewModel.copyWith(namaVariabel: s)),
            currentValue: widget.viewModel.namaVariabel,
            validator: widget.viewModel.namaVariabelValidator,
          ),
          SizedBox(
            height: 20,
          ),
          JumlahRespondenFormField(
            focusNode: jumlahRespondenFocus,
            nextFocusNode: jumlahTotalSkorFocus,
            onChanged: (s) =>
                widget.onChanged(widget.viewModel.copyWith(jumlahResponden: s)),
            currentValue: widget.viewModel.jumlahResponden,
            validator: widget.viewModel.jumlahRespondenValidator,
          ),
          SizedBox(
            height: 20,
          ),
          JumlahTotalSkorFormField(
            focusNode: jumlahTotalSkorFocus,
            nextFocusNode: jumlahItemValidFocus,
            onChanged: (s) =>
                widget.onChanged(widget.viewModel.copyWith(jumlahTotalSkor: s)),
            currentValue: widget.viewModel.jumlahTotalSkor,
            validator: widget.viewModel.jumlahTotalSkorValidator,
          ),
          SizedBox(
            height: 20,
          ),
          JumlahItemValidFormField(
            focusNode: jumlahItemValidFocus,
            nextFocusNode: nilaiSkalaTerkecilFocus,
            onChanged: (s) =>
                widget.onChanged(widget.viewModel.copyWith(jumlahItemValid: s)),
            currentValue: widget.viewModel.jumlahItemValid,
            validator: widget.viewModel.jumlahItemValidValidator,
          ),
          SizedBox(
            height: 20,
          ),
          NilaiSkalaTerkecilFormField(
            focusNode: nilaiSkalaTerkecilFocus,
            nextFocusNode: nilaiSkalaTerbesarFocus,
            onChanged: (s) => widget
                .onChanged(widget.viewModel.copyWith(nilaiSkalaTerkecil: s)),
            currentValue: widget.viewModel.nilaiSkalaTerkecil,
            validator: widget.viewModel.nilaiSkalaTerkecilValidator,
          ),
          SizedBox(
            height: 20,
          ),
          NilaiSkalaTerbesarFormField(
            focusNode: nilaiSkalaTerbesarFocus,
            nextFocusNode: nilaiTengahSkalaFocus,
            onChanged: (s) => widget
                .onChanged(widget.viewModel.copyWith(nilaiSkalaTerbesar: s)),
            currentValue: widget.viewModel.nilaiSkalaTerbesar,
            validator: widget.viewModel.nilaiSkalaTerbesarValidator,
          ),
          SizedBox(
            height: 20,
          ),
          NilaiTengahSkalaFormField(
              focusNode: nilaiTengahSkalaFocus,
              nextFocusNode: nilaiTengahSkalaFocus,
              onChanged: (s) => widget
                  .onChanged(widget.viewModel.copyWith(nilaiTengahSkala: s)),
              currentValue: widget.viewModel.nilaiTengahSkala,
              validator: widget.viewModel.nilaiTengahSkalaValidator),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
