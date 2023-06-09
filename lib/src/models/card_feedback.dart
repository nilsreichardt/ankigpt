abstract class CardFeedbackType implements Enum {
  String getCheckboxText();
}

enum CardDislikeFeedbackType implements CardFeedbackType {
  notUseful,
  notTrue;

  @override
  String getCheckboxText() {
    switch (this) {
      case CardDislikeFeedbackType.notUseful:
        return 'Not useful';
      case CardDislikeFeedbackType.notTrue:
        return 'Not true';
    }
  }
}

enum CardFeedbackStatus {
  notReviewed,
  liked,
  disliked,
}
