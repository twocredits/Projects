import clib

importdll msvcrt =
    clang function  "_strdup"       (ref char)ref char
end

proc start=
    []char str:=z"hello strdup"
    ref char str2
    str2:=_strdup(&.str)
    println str2
end