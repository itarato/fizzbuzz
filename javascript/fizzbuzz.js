'use strict';

var out;

for (var i = 1; i <= 100; i++) {
  out = '';

  if (!(i % 3)) {
    out = out + 'fizz';
  }

  if (!(i % 5)) {
    out = out + 'buzz';
  }

  if (!out) {
    out = i;
  }

  console.log(out);
}
