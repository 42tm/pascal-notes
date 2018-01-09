# Sổ tay Pascal

## Chương 4: Chương trình con

### 4.1: Hàm

Hàm (`function`) là thứ mà bản thân nó chứa các khối lệnh để hoàn thành một nhiệm vụ cụ thể. Các hàm thường lấy vào dữ liệu và trả lại một kết quả. Một khi được viết, hàm có thể được dùng đi dùng lại nhiều lần, có thể được gọi từ hàm khác hoặc thậm chí gọi từ trong chính nó.

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

### 4.2: Thủ tục

Thủ tục (`procedure`) cũng tương tự như hàm, nhưng nó chỉ lấy vào dữ liệu và không trả lại bất cứ thứ gì.

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

### 4.3 Giá trị mặc định

Trong hàm và thủ tục, đôi khi bạn cần nhập vào giá trị. Trong trường hợp không có giá trị nào hoặc giá trị không thỏa mãn, giá trị mặc định sẽ được dùng.
```pascal
program defValueDemo;
 
const
    MAX = 50;
 
procedure ReadNum(i : integer = MAX);
begin
    writeln('Input Number : ', i);  
end;  

begin  
    ReadNum(20); // 20
    ReadNum;     // 50
end.
```

### 4.4 Thay đổi tham số
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

### 4.5 Overloading

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

procedure Msg(user : string; s : string);  
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

### 4.6 Chương trình con lồng nhau
Khi khai báo, bạn có thể khai báo hàm đầu chương trình rồi viết luôn thân hàm, hoặc khai báo lại ở dưới. Nếu như bạn khai báo trước, bạn có thể lồng ghép các hàm/thủ tục với nhau mà không gặp lỗi biên dịch.

```pascal
```

### 4.7 Hàm gọi chính nó (Đệ quy)
Nghe qua, bạn có thể nghĩ tới việc lặp lại giống như `for .. to  .. do` hay `while .. do` hoặc `repeat .. until`. Nhưng khi lặp lại, bạn cần nhập nhiều tham số (> 10) và chúng luôn thay đổi và phụ thuộc nhiều, khi đó bạn sẽ sử dụng đệ quy.

```pascal
program DqDemo;

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

Để biết thêm đệ quy, vui lòng tìm hiểu thêm ở trên mạng.