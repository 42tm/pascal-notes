Chương 4: Chương trình con
==========================

Trong chương này, bạn sẽ biết được:
- Hàm, thủ tục là gì
- Cách sử dụng hàm và thủ tục
- Các thao tác với hàm và thủ tục
- Ứng dụng của hàm và thủ tục

Mục lục
-------

1. [Hàm](#hàm)
2. [Thủ tục](#thủ-tục)
3. [Biến tham số](#biến-tham-số)
4. [Nạp chồng](#nạp-chồng)
5. [Đệ quy](#Đệ-quy)
6. [Quay lui](#quay-lui)

Hàm
---

Hàm (function) là thứ mà bản thân nó chứa các khối lệnh để hoàn thành một nhiệm vụ cụ thể. Các hàm thường lấy vào dữ liệu và trả lại một kết quả. Một khi được viết, hàm có thể được dùng đi dùng lại nhiều lần, có thể được gọi từ hàm khác hoặc thậm chí gọi từ trong chính nó.

```pascal
program functionDemo;
uses crt;
var
    int : integer;

function Add(a : integer; b: integer): integer;
var
    c   : integer;
begin
    c := a + b;
    Add := c;
end;

begin
    int := Add( 12, 34 );
    writeln('int = ', int); // 46
end.
```

Kết quả của hàm được lưu trong biến có tên chính là tên của hàm. Như trong câu lệnh `Add := c;`, giá trị của `c`, tức tổng của `a` và `b`, được gán vào biến `Add`, là kết quả hàm trả về.

Thủ tục
-------

Thủ tục (procedure) cũng tương tự như hàm, nhưng nó chỉ lấy vào dữ liệu và không trả lại bất cứ thứ gì.

```pascal
program procedureDemo;
uses crt;
var
    a   : integer;

procedure Print(i : integer);
begin
    writeln(i);
end;

begin
    a := 90;
    Print(a);   // 90
end.
```

Biến tham số
------------

Trong một số trường hợp, bạn cần xử lý trực tiếp trên biến số mà không qua bất cứ biến số trung gian nào. Lúc này chúng ta sử dụng từ khóa `var` hoặc `out`.

```pascal
program varInpDemo;

procedure ProcA(var a : integer);
begin
    a := 2;
    writeln('a = ', a);
end;

procedure ProcB(out b : integer);
begin
    b := 2;
    writeln('b = ', b);
end;

var
    c, d : integer;

begin
    ProcA(c); //  a = 2
    ProcB(d); //  b = 2
end.
```

Ở phía trên, ta có thể thấy `ProcA` và `ProcB` đều trả về kết quả như nhau. Khi chạy ProcA, trình biên dịch sẽ cảnh báo bạn rằng thông số bạn nhập vào ( biến số `c` ) chưa gán giá trị trước đó. Tuy nhiên hàm ProcB cho trình biên dịch biết thêm thông tin rằng thông số nhập vào không cần phải gán giá trị trước.

Nạp chồng
---------

Theo định nghĩa, bạn có thể khai báo nhiều hơn một lần một hàm/thủ tục, với mỗi lần nhận tham số khác nhau. Danh sách tham số phải khác ít nhất một trong các kiểu phần tử của nó. Nói một cách đơn giản, với một hàm/thủ tục, bạn có thể chia nhiều trường hợp để có thể xử lý nhiều kiểu dữ liệu nhập vào khác nhau.

```pascal
program overloadDemo;

procedure Msg(i : integer);
begin
  writeln('Messenge from program: ', i);
end;

procedure Msg(s : string);
begin
  writeln('Messenge from program: ', s);
end;

procedure Msg(usr : string; s : string);
begin
  writeln('Messenge from ', usr, ': ', s);
end;

var
  c, d : integer;

begin
    Msg(12);                // Messenge from program: 12
    Msg('Hello World');     // Messenge from program: Hello World
    Msg('me', 'Welcome!');  // Messenge from me: Welcome!
end.
```

Khi biên dịch, trình biên dịch sẽ tìm hàm/thủ tục phù hợp với dữ liệu nhập vào. Chẳng hạn `12` trong `Msg(12);` tương ứng với `Msg(integer);`

Đệ quy
------

Nghe qua, bạn có thể nghĩ tới việc lặp lại giống như `for .. to  .. do` hay `while .. do` hoặc `repeat .. until`. Nhưng khi lặp lại, bạn cần nhập nhiều tham số (> 10) và chúng luôn thay đổi và phụ thuộc nhiều, khi đó bạn sẽ sử dụng đệ quy.

```pascal
program RecursionDemo;

function Fibb(i: integer): integer;
begin
    if i < 0 exit;
    else if i = 0 Fibb := 0;
    else if i = 1 Fibb := 1;
    else if i > 1 Fibb := Fibb(i - 1) + Fibb(i - 2);
end;

var
    i   : integer = 0;

begin
    write( Fibb(1) );   // 1
    write( Fibb(3) );   // 2
    write( Fibb(7) );   // 13
end.
```

> Đọc thêm về [Đệ quy](https://vi.wikipedia.org/wiki/%C4%90%E1%BB%87_quy)

Quay lui
--------

Như chúng ta đã biết, sức mạnh máy tính ở chỗ hiệu năng tính toán của nó. Chẳng hạn CPU 3,2 GHz đem lại khả năng xử lý ~ 3 200 000 chu trình trên giây. Backtrack hay quay lui là một ứng dụng của đệ quy cho phép bạn thử hàng loạt các trường hợp. Sau đây là ví dụ của quay lui viết trong Pascal.

```pascal
program backtrack;
var
    // Các biến dùng cho hàm Count
    n, k: integer;
procedure Count(num: integer; total: QWord);
var
    i: integer;
begin
    if num < 0 then exit;
    if num = n then begin
        writeln(total);
        exit;
    end;
    for i := 0 to k do
        Count(num + 1, total * 10 + i);
end;
begin
    n := 5;
    k := 9;
    Count(0, 0);
end.
```

Chương trình trên về cơ bản in ra các số có `n` chữ số, mỗi chữ số trong khoảng `0 ... k`. Kết quả được in ra trên màn hình.
> Đọc thêm về [Backtrack](https://vi.wikipedia.org/wiki/Quay_lui_(khoa_h%E1%BB%8Dc_m%C3%A1y_t%C3%ADnh))
- - -
[<< Chương 3](chapter03.md)  
[Chương 5 >>](chapter05.md)
