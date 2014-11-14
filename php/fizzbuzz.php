<?php

for ($i = 1; $i <= 100; $i++) {
  $out = '';

  if (!($i % 3)) {
    $out .= 'fizz';
  }

  if (!($i % 5)) {
    $out .= 'buzz';
  }

  if (empty($out)) {
    $out = $i;
  }

  echo "$out ";
}
