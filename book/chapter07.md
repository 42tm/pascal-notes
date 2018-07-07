Chương 6: Mảng
================

Mảng một chiều
------------------

Cách hiểu đơn giản nhất của mảng là một dãy số nguyên. Sau đây là cách khai báo của nó:

```pascal
var
    ...
    a: array [ 1..100 ] of integer;
    ...
```

Đoạn mã ở trên đã khai báo một mảng `a` chứa 100 phần tử _số nguyên_, **đánh số từ 1 đến 100**

Hãy xem chương trình mẫu sau đây:

```pascal
Program arrayDemo;

Var
    i:   integer;
    a:   array [ 0..5 ] Of integer;
Begin
    For i:=0 To 5 Do
        readln( a[i] );
        // 4 2 3 4 5 0

    For i:=0 To 5 Do
        write( a[i],' ' );
        // In ra 4 2 3 4 5 0
End.
```

Kết quả trên cho thấy dữ liệu mảng được đọc từ đoạn `a:   array [ 0..5 ] Of integer;`. Đây là cách khai báo mảng cơ bản nhất.

Ở câu `write( a[i],' ' );` ta có thể thấy phần tử mảng được nhắc tới trong dấu ngoặc vuông `[]`. Chẳng hạn `a[4]` là phần tử ~~thứ 4~~ **số 4** trong mảng `a`.
Vì ở trong vòng lặp `for .. to .. do`, đoạn mã này khi chạy sẽ in ra các phần tử trong khoảng `0..5` của mảng `a` như output phía trên.

Mảng đa chiều
--------------------

Đơn giản là, đây chính là mảng lồng mảng. Thường người ta dùng tối đa là mảng 2 chiều hay ma trận. Xem ví dụ dưới đây để hiểu cách khai báo:

```pascal
type
    complex_array = array [ 0..2, 1..3 ] of real;

var
    matrix: real_array;
    ...
```

`matrix` ở trên được khai báo là có các cạnh là mảng trong khoảng `0..2` và mảng trong khoảng `1..3`. Nói cách khác, `matrix` là ma trận có 3 hàng, 3 cột (hàng, cột sắp xếp thế nào tùy cách hiểu của bạn, không bị phụ thuộc trong khai báo).

Để gọi phần tử trong mảng, ta làm tương tự như mảng một chiều:

```
    a[1, 2] := 23;
    if ( a[0, 3] = 12 ) ...
```

Tương tác với mảng
------------------

Ngoài việc sử dụng như phía trên có rất nhiều tương tác khác với mảng.

### Toán tử `[]`
Đây là toán tử giúp bạn truy xuất mảng theo số trong khoảng giới hạn được cho trước hoặc khai báo trước. Phần này được bao gồm trong chương trình mẫu `arrayDemo.pas`

### Hàm `Length()`
Hàm này giúp bạn tính số phần tử có trong mảng. Nghe qua có vẻ không hữu ích lắm, nhưng thực ra lại dặc biệt hữu dụng (xem [6.5]())

```pascal
program arrayLenDemo;
var
    i: integer;
    a: array [ 0..5 ] of integer = (18, 9, 28, 3, 4, 0);
begin
    write( 'Chieu dai: ', length(a) );      // 6
end.
```

Mảng trực tiếp
--------------

Trong Pascal có 2 cách để trực tiếp đưa vào trong câu lệnh một mảng, phụ thuộc vào nơi chúng được đặt. Ở trong phần khai báo biến (`var`), bạn có thể khai báo mảng tĩnh (không thể dùng mảng động) với một dãy các phần từ trong ngoặc thường `()`. Còn trong thân chương trình, bạn có thể tạo một mảng vô danh với một dãy phần tử bằng cách cho chúng vào trong ngoặc vuông `[]`. Chẳng hạn:

```pascal
Program arrayLitrDemo;
Var
    // Khởi tạo một mảng tĩnh
    Numbers : array [ 1..3 ] of Integer = ( 1, 23, 456 );

procedure PrintArray( input : array of String );
var
    i : integer;
begin
    for i := 0 to ( length(input) - 1 ) do
       write( input[i],' ' );
    writeln;
end;

begin
    writeln( Numbers[2] );
    // Tạo một mảng vô danh
    PrintArray( ['one', 'two', 'three'] );
end.
```

Output chương trình:
```
23
one two three
```

Mảng động
---------

Từ đầu đến giờ, chúng ta mới chỉ nhắc tới mảng tĩnh có trong Pascal. Phần này sẽ trình bày cách mảng động hoạt động trong Pascal

Chúng ta sẽ xem qua chương trình mẫu cùng với hàm `SetLength()`

```pascal
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
```

Giả sử, với input sau:
```
2
5
10 2 3 4 5
2
3 4
```

Thì kết quả của chương trình là:
```
10 2 3 4 5
3 4
```

Thế nó khác gì so với mảng tĩnh ? Khi lập trình với input số nguyên, nhiều người sẽ lập tức nghĩ tới số rất to và khởi tạo mảng có độ dài rất lớn (10000 chẳng hạn). Tuy nhiên, nhỡ người dùng lại nhập số rất nhỏ (5) ? Khi đó, chương trình vẫn sẽ khởi tạo 10000 vị trí trong bộ nhớ và như thế chương trình sẽ dùng thừa rất nhiều bộ nhớ. Vì thế, chúng ta phải sử dụng mảng động.
- - -
[<< Chương 6](chapter06.md)  
[Chương 8 >>](chapter08.md)
