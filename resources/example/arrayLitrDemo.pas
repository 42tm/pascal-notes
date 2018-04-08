
Program ArrayLitrDemo;

Var 
    // Khởi tạo một mảng tĩnh
    Numbers :   array [ 1..3 ] Of Integer =   ( 1, 23, 456 );

Procedure PrintArray( input : Array Of String );

Var 
    i :   integer;
Begin
    For i := 0 To ( length(input) - 1 ) Do
        write( input[i],' ' );
    writeln;
End;

Begin
    writeln( Numbers[2] );
    // Tạo một mảng vô danh
    PrintArray( ['one', 'two', 'three'] );
End.
