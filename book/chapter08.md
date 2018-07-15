Chương 7: Tệp (Files)
==========================

Trong chương này, bạn sẽ biết được:
- Tệp là gì
- Cách sử dụng, thao tác với tệp
- Ứng dụng của tệp

Mục lục
-------

1. [Tệp](#tệp)
2. [Các thao tác với tệp](#các-thao-tác-với-tệp)
3. [Tệp văn bản](#tệp-văn-bản)
4. [Nhập xuất](#nhập-xuất)

Tệp
---
Ngôn ngữ Pascal hỗ trợ đọc và ghi tệp thông qua kiểu dữ liệu `file`.
```pascal
...
var
    MyFile: TextFile;       // myFile là tệp văn bản
    f: text;                // f vẫn là tệp văn bản, nhưng là cách viết cũ

    bin: file;              // bin là tệp được đọc theo kiểu nhị phân không xét kiểu
    ch: file Of char;       // ch là tệp được đọc theo kiểu nhị phân theo `char`
```

Các thao tác với tệp
--------------------

### Đóng/Mở tệp
|Câu lệnh|Hành động|
|:---:|:----|
|`AssignFile(File, String)`<br>`Assign(File, String)`|Gán tệp cho một biến|
|`Reset(File)`|Mở tệp ra, đưa con trỏ về vị trí đầu tiên|
|`Rewrite(File)`|Mở tệp ra, xóa hết nội dung và đưa con trỏ về vị trí đầu tiên|
|`Append(File)`|Mở tệp ra, đưa con trỏ đến vị trí cuối cùng của tệp|
|`CloseFile(File)`<br>`Close(File)`|Đóng tệp|
|`IOResult`|Trả về kết quả của thao tác nhập/xuất tệp gần nhất|

### Đọc/Ghi tệp
|Câu lệnh|Hành động|
|:---:|:----|
|`Read(File, Arguments)`<br>`ReadLn(TextFile, Arguments)`|Đọc từ tệp|
|`Write(File, Arguments)`<br>`WriteLn(TextFile, Arguments)`|Ghi vào tệp|
|`EOF(File)`|Kiểm tra xem con trỏ đã đến vị trí cuối tệp hay chưa|
|`EOLn(File)`|Kiểm tra xem con trỏ đã đến vị trí cuối dòng hay chưa|
|`Seek(File, Int64)`|Di chuyển con trỏ tới vị trí chỉ định|

> Các hàm và thủ tục khác có thể tìm thấy tại [Free Pascal 'System' Unit](https://www.freepascal.org/docs-html/rtl/system/index-5.html).

Tệp văn bản
-----------
Đây là loại tệp được sử dụng nhiều nhất trong Pascal vì tính đa dụng, dễ dùng và được nhiều hàm, thủ tục hỗ trợ.
```pascal
Uses crt;

Var 
    i, k:   integer;
    f:      TextFile;

Begin
    assign(f, 'HelloWorld.txt');
    reset(f);
    For i:=1 To 5 Do
        Begin
            readln(f, k);
            writeln(k);
        End;
End.
```
> Bạn hãy thử tạo tệp _HelloWorld.txt_, nhập vào tệp vài con số, lưu lại rồi chạy chương trình trên. Hãy chú ý tới kết quả in ra trên màn hình và so sánh với các con số trong tệp _HelloWorld.txt_.

Nhập xuất
---------
Vậy thì làm thế nào để đọc và ghi? Rất đơn giản, Pascal cho phép chúng ta sử dụng `Read()`, `ReadLn()` để đọc và `Write()`, `WriteLn()` để ghi.
```pascal
Uses crt;

Var 
    i:      integer;
    s:      string;
    f1, f2: TextFile;

Begin
    assign(f1, 'tep1.txt');
    assign(f2, 'tep2.txt');
    reset(f1);
    rewrite(f2);
    For i:=1 To 5 Do
        Begin
            readln(f1, s);
            writeln(f2, s);
        End;
End.
```
> Tiếp tục, bạn hãy thử tạo tệp _tep1.txt_, nhập vào tệp vài con số, lưu lại rồi chạy chương trình trên. Sẽ có một tệp _tep2.txt_ xuất hiện sau khi chạy chương trình.

