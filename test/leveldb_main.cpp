#include "leveldb/db.h"
#include <cassert>

int main() {
  leveldb::DB *db;
  leveldb::Options options;
  options.create_if_missing = true;
  return 0;
}
