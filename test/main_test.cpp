#include "func_test.h"
#include <gtest/gtest.h>
#include <iostream>

GTEST_API_ int main(int argc, char **argv) {
  printf("Running main() from %s\n", __FILE__);
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

TEST(BASE, func_test) {
  int a = 10;
  int b = 20;
  int c = add(a, b);
  EXPECT_EQ(c, 30);
}
