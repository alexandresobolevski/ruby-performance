require 'benchmark/ips'

array = (1..100).map { rand }

Benchmark.ips do |x|
	a = array.dup
  b = array.dup

  x.report('sort!') do
  	a.sort!
  end

  x.report('sort') do
  	b.sort
  end

  x.compare!
end