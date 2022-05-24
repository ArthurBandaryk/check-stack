#include "glog/logging.h"
#include "gtest/gtest.h"

TEST(StackTrace, CheckFailure) {
  auto stringify = [](const int value) {
    CHECK_GE(value, 0);
    return std::to_string(value);
  };

  auto get_string = [&](int value) {
    return stringify(value) + " - positive value";
  };

  const std::string result{get_string(10)};

  CHECK_STREQ("10 - positive value", result.c_str());
}
