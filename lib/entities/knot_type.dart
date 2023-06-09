enum KnotType {
  forward,
  backward,
  forwardBackward,
  backwardForward,
  open,
}

extension KnotTypeExtension on KnotType {
  bool get threePointArrow {
    switch (this) {
      case KnotType.forwardBackward:
      case KnotType.backwardForward:
        return true;

      default:
        return false;
    }
  }

  bool get isBackwards {
    switch (this) {
      case KnotType.backward:
      case KnotType.backwardForward:
        return true;

      default:
        return false;
    }
  }
}
