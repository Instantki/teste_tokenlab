import 'package:flutter_test/flutter_test.dart';
import 'package:teste_tokenlab/app/controllers/detail_controller.dart';
import 'package:teste_tokenlab/app/models/movie_detail_model.dart';

main() {
  final ctrl = DetailController();
  test("Deve retornar um movie detail model", () async {
    final MovieDetailModel movieDetail = await ctrl.start(238);
    expect(movieDetail.popularity, 26.283);
  });
}
