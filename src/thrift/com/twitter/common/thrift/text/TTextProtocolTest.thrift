// =================================================================================================
// Copyright 2011 Twitter, Inc.
// -------------------------------------------------------------------------------------------------
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this work except in compliance with the License.
// You may obtain a copy of the License in the LICENSE file, or at:
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// =================================================================================================

/*
 * Used for testing TTextProtocol.java
 *
 * Authors:
 * "Alex Roetter" <aroetter@twitter.com>
 */
namespace java com.twitter.common.thrift.text

enum Letter {
  ALPHA   = 1,
  BETA    = 2,
  CHARLIE = 3,
  DELTA   = 4,
  ECHO    = 5,
}

struct SubSub {
  1: required i32 x
}

struct Sub {
  1: required i32 s;

  2: required SubSub s2;
}

struct TTextProtocolTestMsg {
  1: required i64 a;

  2: required i32 b;

  13: required i16 n;

  3: required Sub c;

  4: required list<i32> d;

  5: required list<Sub> e;

  6: required bool f;

  7: required byte g;

  8: required map<i32, i64> h;

  9: required map<i16, list<bool>> j;

  10: required set<bool> k;

  11: required binary l;

  12: required string m;

  // Not fully implemented yet, have to say "p" : 3
  // instead of "p" : CHARLIE
  14: required Letter p;

  15: required set<Letter> q;
}

