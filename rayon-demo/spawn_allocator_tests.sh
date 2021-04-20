#!/bin/bash

echo "System allocator"
echo "================"
echo "life >>>"
cargo run -q --release -- life bench
echo "nbody >>>"
cargo run -q --release -- nbody bench
echo "sieve >>>"
cargo run -q --release -- sieve bench
echo "matmul >>>"
cargo run -q --release -- matmul bench
echo "mergesort >>>"
cargo run -q --release -- mergesort bench

echo "tcmalloc"
echo "========"
echo "life >>>"
cargo run -q --release --features=tcmalloc -- life bench
echo "nbody >>>"
cargo run -q --release --features=tcmalloc -- nbody bench
echo "sieve >>>"
cargo run -q --release --features=tcmalloc -- sieve bench
echo "matmul >>>"
cargo run -q --release --features=tcmalloc -- matmul bench
echo "mergesort >>>"
cargo run -q --release --features=tcmalloc -- mergesort bench

echo "jemallocator"
echo "============"
echo "life >>>"
cargo run -q --release --features=jemallocator -- life bench
echo "nbody >>>"
cargo run -q --release --features=jemallocator -- nbody bench
echo "sieve >>>"
cargo run -q --release --features=jemallocator -- sieve bench
echo "matmul >>>"
cargo run -q --release --features=jemallocator -- matmul bench
echo "mergesort >>>"
cargo run -q --release --features=jemallocator -- mergesort bench

echo "mimalloc"
echo "========"
echo "life >>>"
cargo run -q --release --features=mimalloc -- life bench
echo "nbody >>>"
cargo run -q --release --features=mimalloc -- nbody bench
echo "sieve >>>"
cargo run -q --release --features=mimalloc -- sieve bench
echo "matmul >>>"
cargo run -q --release --features=mimalloc -- matmul bench
echo "mergesort >>>"
cargo run -q --release --features=mimalloc -- mergesort bench

echo "rpmalloc"
echo "========"
echo "life >>>"
cargo run -q --release --features=rpmalloc -- life bench
echo "nbody >>>"
cargo run -q --release --features=rpmalloc -- nbody bench
echo "sieve >>>"
cargo run -q --release --features=rpmalloc -- sieve bench
echo "matmul >>>"
cargo run -q --release --features=rpmalloc -- matmul bench
echo "mergesort >>>"
cargo run -q --release --features=rpmalloc -- mergesort bench

