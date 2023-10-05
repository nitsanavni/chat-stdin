#! /bin/bash

export LANGUAGE="python"
requirements_file="requirements"
test_file="test_bingo_fire.py"
sut_file="bingo_fire.py"

display_requirements() {
    echo "Here are the requirements:"
    echo '```'
    cat "$requirements_file"
    echo '```'
}

display_requirements_test() {
    echo "Here is the test:"
    echo '```'
    cat "$test_file"
    echo '```'
}

display_sut() {
    echo "Here is the system under test:"
    echo '```'
    cat "$sut_file"
    echo '```'
}

generate_prompt() {
cat <<PROMPT
Our programming language will be \`${LANGUAGE}\`.
I will provide you with a set of requirements and a test.
Your job is to write the system under test.

# Requirements
$(display_requirements)

# Test
$(display_requirements_test)

# System under test
$(display_sut)

The test currently fails.
Construct a minimal solution that makes the test pass.
Add it to the system under test.
Display the new system under test in a code block.
PROMPT
}

main() {
    generate_prompt
}

main
