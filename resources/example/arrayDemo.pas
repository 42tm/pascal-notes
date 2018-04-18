Program ArrayDemo;

Var 
    i:   integer;
    a:   array [ 0..5 ] Of integer;
Begin
    For i:=0 To 5 Do
        readln( a[i] );
        // 4 2 3 4 5

    For i:=0 To 5 Do
        write( a[i], ' ' );
        // In ra 4 2 3 4 5
End.
