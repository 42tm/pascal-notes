
Program arrayDynDemo;

Var 
    A :   array Of Cardinal;
    n :   Integer;

Begin
    readln(n);
    // Đếm từ 0
    Setlength( A, n );
    For i:=0 To n Do
        readln( a[i] );

    For i:=n Downto 0 Do
        write( a[i],' ' );
End.
