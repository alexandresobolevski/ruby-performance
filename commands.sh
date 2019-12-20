export TESTBENCH_PATH=$(pwd)
alias newbench="sublime $TESTBENCH_PATH/testbench.rb"
alias runbench="ruby $TESTBENCH_PATH/testbench.rb"
function savebench(){
	cp "$TESTBENCH_PATH/testbench.rb" "$TESTBENCH_PATH/archive/$1.rb"
}