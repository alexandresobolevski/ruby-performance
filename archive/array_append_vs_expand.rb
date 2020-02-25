require 'benchmark/ips'

def noop(arg)
end

a = []
b = []

100.times { a << 1 }
100.times { b << 1 }

Benchmark.ips do |x|

  x.report('expand') do
  	[*a, *b]
  end

  x.report('append') do
  	res = []
  	res += a
  	res += b
  	res
  end

  x.compare!
end