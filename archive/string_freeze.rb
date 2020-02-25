require 'benchmark/ips'

def noop(arg)
end

Benchmark.ips do |x|

  x.report('control group') do
  	noop('foo')
  end

  x.report('freeze strings') do
  	noop('foo'.freeze)
  end

  x.compare!
end