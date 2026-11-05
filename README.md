# peekfile

Little script to visualize either the whole content of a file or just a few lines.

Syntax: peek.sh [filepath] [nlines]

    -filepath   Name of the file to visualize
    -nlines     Number of lines to show. Default = 3 
    
If the number of lines inside the file is less than 2*nlines, then peek.sh prints the whole file. If not, it only prints the first and last lines according to nlines.

