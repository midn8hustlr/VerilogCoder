#!/bin/bash

# Define the base directory
base_dir="work"

# Create the base directory if it doesn't exist
mkdir -p "$base_dir"

# Define the subdirectories
subdirectories=(
  "generated_verilog_plans"
  "generate_verilog_dir"
  "tmp"
  "verilog_tool_tmp"
)

# Create the subdirectories if they don't exist
for dir in "${subdirectories[@]}"; do
  mkdir -p "$base_dir/$dir"
done

# Create the symbolic link if it doesn't exist
link_name="$base_dir/verilog_eval_v2"
target="../hardware_agent/examples/VerilogCoder/verilog-eval-v2/dataset_dumpall"

if [ ! -e "$link_name" ]; then
  ln -s "$target" "$link_name"
fi
