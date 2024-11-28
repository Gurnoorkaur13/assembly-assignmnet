.global _start          @ Start of the program

_start:
    MOV R0, #5          @ Store 5 in R0 
    MOV R1, #3          @ Store 3 in R1 
    MOV R5, #15         @ Store 15 in R5

    CMP R0, R1          @ Compare R0 with R1
    BEQ equal           @ If R0 == R1, branch to 'equal' label
    BGT greater         @ If R0 > R1, branch to 'greater' label
    BLT less            @ If R0 < R1, branch to 'less' label

greater:
    LSL R5, R5, #2      @ Perform two logical left shifts on R5
    B end_program       @ Jump to end of the program

less:
    LSR R5, R5, #1      @ Perform one logical right shift on R5
    B end_program       @ Jump to end of the program

equal:
    ROR R5, R5, #1      @ Perform one logical right rotation on R5

end_program:
    MOV R7, #1          @ Exit system call
    SVC #0              @ Make system call to exit the program
