<?php

class Thing extends Inherited {
  public function DoSomething() {
    $start = time();
    sleep(2);
    $diff = time() - $start;
    print "This page needed $diff seconds to load :-)";
  }
}
