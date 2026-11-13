import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:utspab1_if31_nama_mahasiswa/main.dart';
import 'package:utspab1_if31_nama_mahasiswa/kampus_ku.dart';

void main() {
  testWidgets('KampusKu screen displays essential mockup elements', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify KampusKu widget is present
    expect(find.byType(KampusKu), findsOneWidget);

    // Verify texts from mockup
    expect(find.text('Universitas Multi Data Palembang'), findsOneWidget);
    expect(find.text('Kota Palembang, Prov. Sumatera Selatan'), findsOneWidget);
    expect(find.text('Status'), findsOneWidget);
    expect(find.text('Aktif'), findsOneWidget);
    expect(find.text('Akreditasi'), findsOneWidget);
    expect(find.text('Baik Sekali'), findsOneWidget);
    expect(find.text('Tanggal Berdirri'), findsOneWidget);
    expect(find.text('9 April 2021'), findsOneWidget);
    expect(find.text('Rasio Dosen : Masaiswa'), findsOneWidget);
    expect(find.text('1:18.54'), findsOneWidget);
    expect(find.text('0711-376400'), findsOneWidget);
    expect(find.text('kuliah@mdp.ac.id'), findsOneWidget);
    expect(find.text('mdp.ac.id'), findsOneWidget);
    expect(find.text('Alamat'), findsOneWidget);
    expect(find.text('Lihat Maps'), findsOneWidget);

    // Verify icons
    expect(find.byIcon(Icons.phone), findsOneWidget);
    expect(find.byIcon(Icons.email), findsOneWidget);
    expect(find.byIcon(Icons.language), findsOneWidget);

    // Verify button tap
    await tester.tap(find.text('Lihat Maps'));
    await tester.pump();
  });
}
