import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yookassa_client/yookassa_client.dart';

part 'yookassa_item.freezed.dart';
part 'yookassa_item.g.dart';

/// Информация о товаре
@Freezed()
abstract class YookassaItem with _$YookassaItem {
  const factory YookassaItem({
    required String description,
    required String quantity,
    required Amount amount,
    @Default('commodity') String paymentSubject,
    @Default('full_payment') String paymentMode,
    @Default('1') String vatCode,
  }) = _YookassaItem;

  factory YookassaItem.fromJson(Map<String, dynamic> json) =>
      _$YookassaItemFromJson(json);
}
