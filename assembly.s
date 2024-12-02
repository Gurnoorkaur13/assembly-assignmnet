.global _start

_start:
    MOV R0, #15       // Store the first number in R0
    MOV R1, #10         // Store the second number in R1
    MOV R5, #15        // Store decimal 15 in R5
    
    CMP R0, R1         // Compare R0 with R1 (R0 - R1)
    BEQ equal          // If R0 == R1, branch to 'equal'
    BGT greater        // If R0 > R1, branch to 'greater'
    BLT lesser         // If R0 < R1, branch to 'lesser'

equal:
    ROR R5, R5, #1     // Rotate R5 right by 1 bit
    B end_program      // Jump to end of program

greater:
    LSL R5, R5, #2     // Logical shift left R5 by 2 bits (two shifts)
    B end_program      // Jump to end of program

lesser:
    LSR R5, R5, #1     // Logical shift right R5 by 1 bit
    B end_program      // Jump to end of program

end_program:
    MOV R7, #1         // Exit system call number
    SVC #0             // System call to exit the program
