#![allow(unused)]

use std::fs;
use rand::Rng;

fn main() {
    let mut name = String::new();
    let greeting = "Nice to meet you";
  
    println!("What is your name?");
    std::io::stdin().read_line(&mut name)
      .expect("Didn't receive input");
    println!("Hello {}! {}", name.trim_end(),  &greeting);
}
