define ib
info breakpoints
end
document ib 
List breakpoints
end

define db 
disbale breakpoint $arg0
end
document db
disable breakpoint number
Usage: db # 
end

define eb 
disbale breakpoint $arg0
end
document eb
enable breakpoint number
Usage: eb # 
end

define ts
thread $arg0
end
document ts
Swtich thread
Usage: ts #
end


define il
info local
end
document il 
Show local variable
end

define if
info frame
end
document if 
Show frame
end

define is
info stack
end
document is 
Show stack
end


define ih
info share
end
document ih
Show shared library
end

define it
info thread
end
document it 
Show thread
end

define ig
info args
end
document ig 
Show argumnets
end

define vars
ptype ${arg0}
end
document var
Show struct variable prototype
end

define var
whatis ${arg0}
end
document var 
Show  variable prototype
end

define px
print /x $arg0
end
document px 
print hex value
end

define pu
print /u $arg0
end
document pu 
print unsigned value
end

define pu
print /u $arg0
end
document pu 
print signed value
end

define pb
print /t $arg0
end
document pu 
print binary value
end

define pa
print ${arg0}@${arg1}
end
document pa
print array value
end

define ds
display ${arg0}
end
document ds 
dispaly variable after next step
end

define ids
info display
end
document ids
show disaplay variable list
end

define eds
enable display ${arg0}
end
document eds
enable specify disaplay variable 
end

define dds
disable display ${arg0}
end
document dds
disable specify disaplay variable
end

define hexdump
    if $argc != 1
        help hexdump
    else
        #echo \033[1;34m
        printf "%08X : ", $arg0
        #echo \033[0;34m
        hex_quad $arg0
        #echo \033[1;34m
        printf " - "
        #echo \033[0;34m
        hex_quad $arg0+8
        printf " "
        #echo \033[1;34m
        ascii_char $arg0+0x0
        ascii_char $arg0+0x1
        ascii_char $arg0+0x2
        ascii_char $arg0+0x3
        ascii_char $arg0+0x4
        ascii_char $arg0+0x5
        ascii_char $arg0+0x6
        ascii_char $arg0+0x7
        ascii_char $arg0+0x8
        ascii_char $arg0+0x9
        ascii_char $arg0+0xA
        ascii_char $arg0+0xB
        ascii_char $arg0+0xC
        ascii_char $arg0+0xD
        ascii_char $arg0+0xE
        ascii_char $arg0+0xF
        #echo \033[0m
        printf "\n"
    end
end
document hexdump
Display a 16-byte hex/ASCII dump of memory at address ADDR.
Usage: hexdump ADDR
end

define ascii_char
    if $argc != 1
        help ascii_char
    else
        # thanks elaine :)
        set $_c = *(unsigned char *)($arg0)
        if ($_c < 0x20 || $_c > 0x7E)
            printf "."
        else
            printf "%c", $_c
        end
    end
end
document ascii_char
Print ASCII value of byte at address ADDR.
Print "." if the value is unprintable.
Usage: ascii_char ADDR
end


define hex_quad
    if $argc != 1
        help hex_quad
    else
        printf "%02X %02X %02X %02X  %02X %02X %02X %02X\n", \
               *(unsigned char*)($arg0), *(unsigned char*)($arg0 + 1),     \
               *(unsigned char*)($arg0 + 2), *(unsigned char*)($arg0 + 3), \
               *(unsigned char*)($arg0 + 4), *(unsigned char*)($arg0 + 5), \
               *(unsigned char*)($arg0 + 6), *(unsigned char*)($arg0 + 7)
    end
end
document hex_quad
Print eight hexadecimal bytes starting at address ADDR.
Usage: hex_quad ADDR
end



source ~/.gdbinit_stl
