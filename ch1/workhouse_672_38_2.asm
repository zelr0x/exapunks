GRAB 300
COPY F X
WIPE

LINK 800
GRAB 199
MARK READNAME
TEST F = X
TJMP READID
SEEK 2
JUMP READNAME
MARK READID
SEEK 1
COPY F X
DROP

LINK 799
GRAB X
SEEK 2
COPY 0 X
MARK ACC
ADDI X F X
SEEK -1
VOID F
TEST EOF
FJMP ACC
JUMP APPEND

MARK APPEND
TEST X > 75
FJMP APPENDLAST
COPY 75 F
SUBI X 75 X
JUMP APPEND

MARK APPENDLAST
TEST X > 0
FJMP END
COPY X F
HALT
MARK END
HALT
