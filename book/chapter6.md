# Sổ tay Pascal

## Chương 6: Mảng

### 6.1 Mảng một chiều
Cách hiểu đơn giản nhất của mảng là một dãy số nguyên. Sau đây là cách khai báo của nó:
```pascal
var
    ...
    a: array [ 1..100 ] of integer;
    ...
```

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
        write( a[i]," " );
        // In ra 4 2 3 4 5 0
End.
```
Kết quả trên cho thấy dữ liệu mảng được đọc từ đoạn `a:   array [ 0..5 ] Of integer;`. Đây là cách khai báo mảng cơ bản nhất.

Ở câu `write( a[i]," " );` ta có thể thấy phần tử mảng được nhắc tới trong dấu ngoặc vuông `[]`. Chẳng hạn `a[4]` là phần tử **số 4** trong mảng `a`.
Vì ở trong vòng lặp `for .. to .. do`, đoạn mã này khi chạy sẽ in ra các phần tử trong khoảng `0..5` như output phía trên.

### 6.2 Mảng nhiều chiều
Đơn giản là, đây chính là mảng lông mảng. Thường người ta dùng tối đa là mảng 2 chiều. Xem ví dụ dưới đây để hiểu cách khai báo
```pascal
type
    complex_array = array [ 0..2, 1..3 ] of real;

var
    matrix: real_array;
    ...
```
Để gọi phần tử trong mảng, ta làm tương tự như mảng một chiều:
```

    a[1, 2] := 23;
    if ( a[0, 3] = 12 ) ...
    
```

### 6.3 Tương tác với mảng
Ngoài việc sử dụng như phía trên có rất nhiều tương tác khác với mảng.

#### Toán tử `[]`
Đây là toán tử giúp bạn truy xuất mảng theo số trong khoảng giới hạn được cho trước hoặc khai báo trước. Phần này được bao gồm trong chương trình mẫu `arrayDemo.pas`

#### Hàm `Length()`
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

### 6.4 Mảng trực tiếp
Trong Pascal có 2 cách để trực tiếp đưa vào trong câu lệnh một mảng, phụ thuộc vào nơi chúng được đặt. Ở trong phần khai báo biến (`var`), bạn có thể khai báo mảng tĩnh (không thể dùng mảng động) với một dãy các phần từ trong ngoặc thường `()`. Còn trong thân chương trình, bạn có thể tạo một mảng vô danh với một dãy phần tử bằng cách cho chúng vào trong ngoặc vuông `[]`. Chẳng hạn:
```pascal
Var
    // Khởi tạo một mảng tĩnh
    Numbers : array [1..3] of Integer = (1, 23, 456);

procedure PrintArray(input : array of String);
var 
    i : integer;
begin
    for i := 0 to ( length(input) - 1 ) do
       write(input[i],' ');
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

### 6.5 Mảng động
Từ đầu đến giờ, chúng ta mới chỉ nhắc tới mảng tĩnh có trong Pascal. Phần này sẽ trình bày cách mảng động hoạt động trong Pascal

Chúng ta sẽ xem qua chương trình mẫu cùng với hàm `SetLength()`
```pascal
Program arrayDynDemo;

Var 
    A : array of Cardinal;
    n : Integer;

begin
    readln(n);
    // Đếm từ 0
    Setlength( A, n );
    For i:=0 To n Do
        readln( a[i] );
        
    For i:=n Downto 0 Do
        write( a[i]," " );
end.
```

Giả sử, với input sau:
```
5
10 2 3 4 5
```

Thì kết quả của chương trình là:
```
5 4 3 2 10
```

Thế nó khác gì so với mảng tĩnh ? Khi lập trình với input số nguyên, nhiều người sẽ lập tức nghĩ tới số rất to và khởi tạo mảng có độ dài rất lớn (10000 chẳng hạn). Tuy nhiên, nhỡ người dùng lại nhập số rất nhỏ (1) ? Khi đó, chương trình vẫn sẽ khởi tạo 10000 vị trí trong bộ nhớ và như thế chương trình sẽ dùng thừa rất nhiều bộ nhớ. , chúng ta phải sử dụng mảng động.