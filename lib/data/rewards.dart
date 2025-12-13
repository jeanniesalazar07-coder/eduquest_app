class RewardSystem {
  static int stars = 0;
  static int xp = 0;
  static int level = 1;

  static void rewardCorrectAnswer() {
    stars += 1;
    xp += 15;

    if (xp >= level * 100) {
      level++;
      xp = 0;
    }
  }
}
