# The following command displays the largest files in a directory
du -ah /var/lib/ | sort -n -r | head -n 10

# The breakdown of the command is as follows:
# Obtain file sizes using the du command
# Return the size of all files, in human readable format (-ah) in the target directory (/var/lib)
# Pipe (|) the results to the 'sort' command
# Sort by number (-n) in descending order (-r). The -r stands for Reverse
# Pipe (|) the results to the 'head' command
# Diplay the first {x} results (-n). The example above returns 10
