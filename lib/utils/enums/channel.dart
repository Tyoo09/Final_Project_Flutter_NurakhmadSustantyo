enum Channel {
  bbc,
  toi,
  politico,
  twp,
  reuters,
  cnn,
  nbc,
  hills,
  fox,
}

extension ChannelExplaination on Channel {
  String get name {
    switch (this) {
      case Channel.bbc:
        return 'BBC News';
      case Channel.toi:
        return 'Times of India';
      case Channel.politico:
        return 'Politico';
      case Channel.twp:
        return 'The Washington Post';
      case Channel.reuters:
        return 'Reuters';
      case Channel.cnn:
        return 'CNN';
      case Channel.nbc:
        return 'NBC News';
      case Channel.hills:
        return 'The Hills';
      case Channel.fox:
        return 'FOX News';
    }
  }
}
