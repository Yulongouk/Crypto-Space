class Position {
  final String size;
  final String entryPrice;
  final String markPrice;
  final String unrealizedPNL;
  final String margin;
  final String liquidationPrice;
  final String symbol;

  Position(this.symbol,this.size, this.entryPrice, this.markPrice, this.unrealizedPNL,
      this.margin, this.liquidationPrice);
}
