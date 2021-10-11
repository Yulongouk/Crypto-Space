import 'package:cryptospace/model/open_order.dart';
import 'package:cryptospace/model/position.dart';

class AnalyzeData {
  final String key;
  final String totalValue;
  final List<Position> position;
  final List<OpenOrder> openOrder;
  AnalyzeData(this.key, this.totalValue,this.position, this.openOrder);
}
