class Lesson {
  final String title;
  final String content;

  Lesson({required this.title, required this.content});
}

final Map<String, List<Lesson>> lessons = {
  "History": [
    Lesson(
      title: "Ancient Civilizations",
      content:
          "Ancient civilizations like Egypt, Mesopotamia, and China were the world's earliest societies. They developed writing, farming, and early forms of government.",
    ),
    Lesson(
      title: "Middle Ages",
      content:
          "The Middle Ages was a period from the 5th to the 15th century. It featured kingdoms, castles, knights, and the growth of trade.",
    ),
    Lesson(
      title: "Renaissance Era",
      content:
          "The Renaissance was a time of rebirth in art and science. Famous figures include Leonardo da Vinci and Michelangelo.",
    ),
    Lesson(
      title: "Modern History",
      content:
          "Modern history includes the Industrial Revolution, world wars, and the rise of technology shaping our world today.",
    ),
  ],

  "Science": [
    Lesson(
      title: "The Solar System",
      content:
          "The solar system consists of the Sun and eight planets. Earth is the only known planet with life.",
    ),
    Lesson(
      title: "Matter",
      content:
          "Matter is anything that has mass and takes up space. It exists in solid, liquid, and gas forms.",
    ),
    Lesson(
      title: "Living Organisms",
      content:
          "Living organisms grow, reproduce, and respond to the environment. They include plants, animals, and microorganisms.",
    ),
    Lesson(
      title: "Energy",
      content:
          "Energy comes in many forms such as light, heat, and electricity. It is essential for all living and non-living processes.",
    ),
  ],

  "Math": [
    Lesson(
      title: "Addition & Subtraction",
      content:
          "Addition means combining numbers. Subtraction means taking away. They are the foundation of arithmetic.",
    ),
    Lesson(
      title: "Multiplication Basics",
      content: "Multiplication is repeated addition. For example: 3 × 4 = 12.",
    ),
    Lesson(
      title: "Fractions",
      content:
          "Fractions represent parts of a whole. Example: 1/2 means one part out of two equal parts.",
    ),
    Lesson(
      title: "Geometry",
      content:
          "Geometry is the study of shapes like squares, triangles, and circles.",
    ),
  ],

  "English": [
    Lesson(
      title: "Nouns",
      content: "Nouns are words that name people, places, things, or ideas.",
    ),
    Lesson(
      title: "Verbs",
      content: "Verbs are action words like run, jump, and play.",
    ),
    Lesson(
      title: "Adjectives",
      content:
          "Adjectives describe nouns, such as 'bright', 'tall', or 'colorful'.",
    ),
    Lesson(
      title: "Reading Comprehension",
      content:
          "Reading comprehension means understanding what you read. Practice improves vocabulary and memory.",
    ),
  ],

  "Geography": [
    Lesson(
      title: "Continents",
      content:
          "There are seven continents: Asia, Africa, North America, South America, Antarctica, Europe, and Australia.",
    ),
    Lesson(
      title: "Oceans",
      content:
          "Earth has five major oceans: Pacific, Atlantic, Indian, Southern, and Arctic.",
    ),
    Lesson(
      title: "Weather & Climate",
      content:
          "Weather changes daily. Climate is the long-term weather pattern in a region.",
    ),
    Lesson(
      title: "Landforms",
      content: "Landforms include mountains, valleys, plains, and plateaus.",
    ),
  ],

  "General Knowledge": [
    Lesson(
      title: "Countries & Capitals",
      content:
          "Every country has a capital city. For example, the capital of Japan is Tokyo.",
    ),
    Lesson(
      title: "Famous Landmarks",
      content:
          "Landmarks include the Eiffel Tower, Great Wall of China, and Statue of Liberty.",
    ),
    Lesson(
      title: "Inventions",
      content:
          "Important inventions include the telephone, airplane, and the internet.",
    ),
    Lesson(
      title: "Animals",
      content: "Animals can be mammals, birds, reptiles, fish, or amphibians.",
    ),
  ],
};
