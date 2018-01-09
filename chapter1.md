# Sổ tay Pascal

## Chương 1: Bắt đầu với Pascal

|Một số trình biên dịch phổ biến| Tên thực thi | Trạng thái |
|---|---|---|
| [Free Pascal](https://www.freepascal.org/) | `fpc` | Tiếp tục phát triển |
|[GNU Pascal](http://www.gnu-pascal.de/) | `gpc` | Ngừng phát triển (v20060325 - 2006) |
| [Turbo Pascal]() (Borland Pascal) | `tpc` | Ngừng phát triển (v7.1 - 1997) |

### 1.1: Hello World

Để viết chương trình pascal đơn giản in ra “Hello, World” trên màn hình, hãy sử dụng một chương trình soạn thảo văn bản thuần để tạo ra một tệp mới (ví dụ `hello.pas` – đuôi tệp bắt buộc phải là `.pas`) có chứa mã nguồn sau:
#### hello.pas
```pascal
program HelloWorld;

uses crt;

begin
    writeln('Hello, World');
end.
```
#### Hãy quan sát từng dòng của chương trình:
```pascal
program HelloWorld;
```
Dòng này giúp trình biên dịch biết rằng tên chương trình của bạn là `HelloWorld`. Thông thường, nếu bạn chỉ viết một tệp thì dòng nay có vẻ không cần thiết nhưng khi bạn chia mã nguồn thành các tệp nhỏ thì bạn bắt buộc phải viết dòng này để phân biệt.
```pascal
uses crt;
```
Dòng này thông báo cho trình biên dịch để bao gồm các nôi dung của thư viện tiêu chuẩn `crt` trong chương trình. Đầu chương trình thường là tên thư viện có sẵn hoặc tên tệp là thư viện chứa các khai báo hàm, macro và kiểu dữ liệu, và bạn phải bao gồm các thư viện đâu chương trình trước khi bạn sử dụng chúng. Dòng này bao gồm thư viện `crt` nên bạn có thể gọi hàm `writeln()` sau đó.
```pascal
begin
    ...
end.
```
Cặp từ `begin` và `end` được dùng để tạo ra một khối lệnh. Nếu như bạn sử dụng `begin` và có kết thúc là `end;` (Có dấu chấm phẩy) thì trình biên dịch sẽ hiểu đây là khối lệnh thường, còn nếu kết thúc là `end.` thì trình biên dịch hiểu đây là thân chương trình chính. Chương trình khi khởi chạy sẽ bắt đầu trong phần này.
```pascal
writeln('Hello, World');
```
Dòng này gọi hàm `writeln()` để xuất văn bản ra đầu ra tiêu chuẩn (màn hình, theo mặc định), theo đó là xuống dòng. Xâu được xuất được bao hàm trong dấu ngoặc đơn `()`.

`'Hello, World'` là xâu sẽ được viết lên màn hình. Trong Pascal thì tất cả xâu phải được đóng ngoặc như sau `'__'`

Trong chương trình Pascal, mỗi dòng lệnh cần được kết thúc bằng dầu chấm phẩy `;` (Tương tự hầu hết ngôn ngữ lập trình khác)

### 1.2 Thay đổi chương trình

Ngoài sử dụng bộ sửa đổi có sẵn trong Free Pascal hay Turbo Pascal, bạn có thể sử dụng trình soạn thảo cơ bản notepad trên Windows, vim hay nano trong Linux. Hơn nữa bạn có thể sử dụng trình soạn thảo đa nền tảng là Visual Studio Code hoặc Sublime Text.

Trình soạn thảo bắt buộc phải tạo ra tệp văn bản thuần, không phải dạng RTF hay bất cứ dạng nào khác.

### 1.3 Biên dịch và chạy chương trình

Để chạy chương trình, tệp mã nguồn (`hello.pas`) đầu tiên cần được biên dịch thành một tệp thực thi được (ví dụ như `hello.exe` trên Windows hay `hello` trên hệ thống Unix/Linux). Bạn có thể làm được bằng cách sử dụng một trình biên dịch cho Pascal.

Sau đây, chúng tôi sẽ chỉ trình bày cách biên dịch trên Free Pascal do các trình biên dịch khác đều đã cũ và không còn được hỗ trợ.

#### Biên dịch thông qua `fpc`

Free Pascal là trình biên dịch Pascal phổ biến. Để biên dịch, bạn chỉ cần mở cửa sổ câu lệnh là Command Prompt hay tương đương, bạn có thể biên dịch chương trình bằng cách chạy:
```
fpc hello.pas
```
Nếu không có lỗi nào được phát hiện trong mã nguồn (`hello.pas`), trình biên dịch sẽ tạo ra một tệp nhị phân, tên của nó sẽ được lấy theo tên mã nguồn (`hello`). Đây là tệp thực thi cuối cùng.

### 1.4 Chạy chương trình

Một khi bạn đã được biên dịch, tệp nhị phân sau đó có thể được chạy bằng cách gõ `./hello` trong cửa sổ câu lệnh. Khi thực hiện, chương trình được biên dịch sẽ in ra `Hello, World`, theo đó là xuống dòng mới, và trở lại cửa sổ câu lệnh.

### 1.5 Ghi chú

Chương trình của bạn quá phức tạp ? Bạn có thể dùng ghi chú. Chương trình của bạn có các câu lệnh bạn không cần, nhưng có thể lát nữa lại cần ? Hãy dùng ghi chú.

Có 2 kiểu ghi chú:
- Ghi chú một dòng: Bạn có thể dùng `//` để có thể ghi chú
- Ghi chú nhiều dòng: Bạn có thể dùng `{` để bắt đầu ghi chú và `}` để kết thúc ghi chú.