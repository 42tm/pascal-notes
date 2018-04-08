Program arrayDynDemo;

Var 
    A :   array Of Cardinal;
    i, t, ti, n :   Integer;
    num:   Cardinal;

Begin
    readln(t);
    // Số lần nhập mảng

    For ti := 1 To t Do
    Begin
        readln(n);
        // Đếm từ 0
        Setlength( A, n );

        For i := 0 To n - 1 Do
            read( A[i] );

        For num In A Do
            write( num,' ' );
        // In n phần tử có trong mảng

        writeln();
    End;
End.
