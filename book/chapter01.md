<h1 align="center">Chương 1: Bắt đầu với ngôn ngữ Pascal</h1>

Trong chương này, bạn sẽ biết được:
- Hai dạng cơ bản của một chương trình máy tính
- Trình biên dịch là gì, và các trình biên dịch phổ biến của ngôn ngữ Pascal
- Trình biên tập mã và môi trường phát triển tích hợp là gì
- Cách viết chương trình Hello World bằng ngôn ngữ Pascal
- Cách biên dịch một tệp mã nguồn Pascal, và cách chạy chương trình Pascal trong
cửa sổ giao diện dòng lệnh
- Cách viết ghi chú trong ngôn ngữ Pascal

Mục lục
-------

1. [Chương trình máy tính](#chương-trình-máy-tính)
2. [Trình biên dịch](#trình-biên-dịch)
3. [Trình biên tập mã và môi trường phát triển tích hợp][link 3]
4. [Viết chương trình Pascal đầu tiên](#viết-chương-trình-pascal-đầu-tiên)
    - [Phân tích mã nguồn của chương trình Hello World][sub link 4]
5. [Biên dịch chương trình Pascal](#biên-dịch-chương-trình-pascal)
    - [Trên Windows](#trên-windows)
    - [Trên một bản phân phối của GNU/Linux][sub 2 link 5]
    - [Trên macOS](#trên-macos)
6. [Chạy chương trình Pascal](#chạy-chương-trình-pascal)
7. [Ghi chú trong chương trình](#ghi-chú-trong-chương-trình)
8. [Chú giải](#chú-giải)

[link 3]: #trình-biên-tập-mã-và-môi-trường-phát-triển-tích-hợp
[sub link 4]: #phân-tích-mã-nguồn-của-chương-trình-hello-world
[sub 2 link 5]: #trên-một-bản-phân-phối-của-gnulinux

Chương trình máy tính
---------------------

Bạn có thể làm rất nhiều thứ trên máy tính. Soạn thảo văn bản, tra cứu trên
Internet, chơi một trò chơi điện tử, vân vân. Máy tính trông có thể đang làm rất
nhiều việc, nhưng nói ở một mức độ cơ bản thì máy tính là một cỗ máy chỉ biết
nghe lời. Bạn viết một **chương trình**, bạn đưa cho máy tính thực hiện, và nó
thực hiện đúng những gì mà bạn muốn, không thừa không thiếu. Có thể đó là một
chương trình mà chỉ đơn giản là chương trình in các dòng chữ lên màn hình. Hoặc
chương trình đó có thể là một trò chơi hấp dẫn.

Máy tính chỉ có thể hiểu một ngôn ngữ, ngôn ngữ đó được gọi là ngôn ngữ máy.
Ngôn ngữ máy chỉ có hai ký tự: 1 và 0. Đó là lý do vì sao người ta thường gắn
liền hình ảnh máy tính với các dòng toàn số 1 và số 0. Một chương trình máy tính
chứa ngôn ngữ máy yêu cầu máy tính in ra một dòng chữ có thể chứa những lệnh
ngôn ngữ máy sau:

```
00000000: 00110011
00000001: 00001101
00000002: 00001101
00000003: 00001010
00000004: 10010001
00000005: 00000111
00000006: 01011110
```

Như bạn thấy, ngôn ngữ máy rất khó hiểu, và rất khó để làm việc với chúng. Vì
vậy, con người đã tạo ra những ngôn ngữ lập trình dễ hiểu hơn với con người, và
Pascal là một trong số những ngôn ngữ đó. Một chương trình viết bằng ngôn ngữ
Pascal mà cũng in ra một dòng chữ có thể nhìn như sau:

```pascal
Begin
    Writeln('Toi la Pascal');
End.
```

Như bạn có thể thấy, ngôn ngữ Pascal (cũng như nhiều ngôn ngữ lập trình khác)
giúp việc tạo ra một chương trình máy tính đơn giản đi rất nhiều.

Đến đây, ta có thể suy ra, chương trình máy tính có hai dạng:
1. **Dạng thực thi** (executable): Dạng bao gồm các lệnh ngôn ngữ máy để đem đi
cho máy tính thực hiện, rất khó để cho các lập trình viên đọc và chỉnh sửa
2. **Dạng mã nguồn** (source code): Dạng bao gồm các lệnh được viết bằng một
ngôn ngữ lập trình, dễ hiểu hơn ngôn ngữ máy và dành cho các lập trình viên để
đọc và làm việc với

Vậy, con người viết chương trình máy tính ở dạng mã nguồn, và chuyển đổi chương
trình của mình từ dạng mã nguồn sang dạng thực thi. Để chuyển đổi từ dạng mã
nguồn sang dạng thực thi, cần phải có một chương trình khác. Tùy theo loại ngôn
ngữ lập trình, mà nó có thể được gọi là "trình biên dịch", "trình thông dịch",
hay "trình hợp dịch". Trong trường hợp của ngôn ngữ Pascal, chương trình chuyển
đổi này được gọi là "trình biên dịch".

Trình biên dịch
---------------

**Trình biên dịch là một phần mềm dùng để chuyển một chương trình từ dạng mã
nguồn sang dạng thực thi**. Nó thường nhận một tệp tin chứa mã nguồn, và xử lý
tệp tin đó, rồi cho ra một tệp tin ở dạng thực thi. Khi bạn dùng máy tính, để mở
một trò chơi hay một phần mềm, bạn thường kích đúp chuột lên tệp tin phần mềm
đó. Tệp tin mà bạn kích đúp lên là tệp tin ở dạng thực thi, và bên trong tệp tin
đó chứa các lệnh ngôn ngữ máy.

Ngôn ngữ lập trình mà cần trình biên dịch để chuyển đổi sang ngôn ngữ máy được
xếp vào loại "ngôn ngữ được biên dịch". Mỗi ngôn ngữ lập trình được biên dịch có
trình biên dịch riêng của mình. Một ngôn ngữ thì có thể có nhiều trình biên dịch
khác nhau. Bảng sau cho biết một số trình biên dịch cho ngôn ngữ Pascal.

|      Tên trình biên dịch      | Tên thực thi |       Trạng thái        |
|             :---:             |    :---:     |          :---:          |
|      [Free Pascal][fpc]       |    `fpc`     |   Tiếp tục phát triển   |
|       [GNU Pascal][gpc]       |    `gpc`     | Ngừng phát triển (2006) |
| Turbo Pascal (Borland Pascal) |    `tpc`     | Ngừng phát triển (1997) |

[fpc]: http://www.freepascal.org/
[gpc]: http://www.gnu-pascal.de/

Vì Free Pascal hiện tại vẫn đang được phát triển và hỗ trợ, và vì nó có thể
chạy trên mọi hệ điều hành phổ biến ngày nay, nên trong quyển sách này, các
hướng dẫn liên quan đến trình biên dịch của Pascal sẽ lấy Free Pascal làm chuẩn.
Nhóm tác giả chúng tôi cũng khuyên bạn nên dùng Free Pascal. Bạn có thể đến
[trang này](https://freepascal.org/download.var) để tải trình biên dịch Free
Pascal.

Trình biên tập mã và môi trường phát triển tích hợp
---------------------------------------------------

Một phần mềm mà giúp người dùng viết mã và chỉnh sửa mã là một **trình biên tập
mã** (tiếng Anh là _**code editor**_ hay _**soure code editor**_). Trình biên tập
mã thường hỗ trợ việc viết mã trong nhiều ngôn ngữ lập trình. Visual Studio Code
và Atom là hai ví dụ của trình biên tập mã. Lấy ví dụ như Visual Studio Code,
khi bạn mở trình biên tập mã này lên, bạn có thể lựa chọn một ngôn ngữ lập trình
để bắt đầu làm việc, chẳng hạn như Pascal, và Visual Studio Code sẽ có những
tính năng cơ bản giúp bạn lập trình Pascal, chẳng hạn như tính năng tô sáng cú
pháp<sup><a href="#chú-giải">[1]</a></sup>.

Một **môi trường phát triển tích hợp** (tiếng Anh là _Integrated Development
Environment_, viết tắt là _**IDE**_) là phần mềm tích hợp một trình biên tập mã
để người dùng viết mã nguồn, và tích hợp cả trình biên dịch/thông dịch và trình
gỡ lỗi<sup><a href="#chú-giải">[2]</a></sup>. Khi viết mã xong, người dùng có
thể chạy và gỡ lỗi chương trình chỉ bằng các thao tác đơn giản như bấm nút.
Thường thì môi trường phát triển tích hợp chỉ hỗ trợ việc phát triển chương
trình viết bằng một ngôn ngữ duy nhất hoặc có thể hai, hay ba ngôn ngữ (nhưng
thường thì các ngôn ngữ đó có liên hệ thân mật với nhau), chứ không phải mọi
ngôn ngữ đều có thể viết được như trong một trình biên tập mã. Ví dụ, Eclipse là
một môi trường phát triển tích hợp cho ngôn ngữ Java. Trong Eclipse, người dùng
có thể bấm nút để chạy chương trình Java mà mình đã viết, và nó còn giúp người
dùng gỡ lỗi và tự động thao tác các bài kiểm thử phần mềm.

|Điểm so sánh|Trình biên tập mã|Môi trường phát triển tích hợp|
|:---:|---|---|
|Có thể dùng để viết mã?|Có|Có|
|Giúp đời đơn giản hơn?|:+1:|:+1:|
|Tự động hóa một số công đoạn trong lập trình?|Có thể có, có thể không|:+1:|
|Hỗ trợ ngôn ngữ|Nhiều ngôn ngữ|Chỉ một hoặc vài ngôn ngữ|
|Tính năng|Các tính năng cơ bản như tô sáng cú pháp và lùi dòng|Giống trình biên tập mã, cộng thêm các tính năng đặc biệt dành cho ngôn ngữ mà phần mềm tập trung vào|
|Kèm theo phần mềm để chuyển đổi sang ngôn ngữ máy?|Thường là người dùng cần phải tải thêm phần mềm mở rộng|Có|
|Kèm theo trình gỡ lỗi?|Thường là người dùng cần phải tải thêm phần mềm mở rộng|Có|

Ngôn ngữ Pascal cũng có một số môi trường phát triển tích hợp. Môi trường phát
triển tích hợp Free Pascal tích hợp trình biên dịch Free Pascal. Môi trường phát
triển tích hợp Turbo Pascal tích hợp trình biên dịch Turbo Pascal. Tuy nhiên,
chúng tôi khuyên các bạn nên dùng một trình biên tập mã như Atom hay Sublime
Text để có được giao diện tốt hơn, dễ dùng hơn.

Viết chương trình Pascal đầu tiên
---------------------------------

Chương trình Pascal chúng ta viết đầu tiên sẽ là chương trình Hello World.
Chương trình Hello World là một chương trình chỉ in ra  dòng chữ “Hello,
World!”, không có gì hơn. Vì đây là chương trình đơn giản nhất với mọi ngôn ngữ
lập trình, nên việc viết chương trình Hello World lấy làm chương trình đầu tiên
khi học một ngôn ngữ lập trình mới đã trở thành một "truyền thống".

Chúng ta hãy cùng viết chương trình Hello World bằng ngôn ngữ Pascal!
Mở một trình biên tập mã, và viết những dòng lệnh sau:

```pascal
Program HelloWorld;

Begin
    Writeln('Hello, World!');
End.
```

Lưu thành một tệp tin, đặt tên là “_hello.pas_".  
> **Lưu ý**: phần mở rộng của tệp tin chứa mã nguồn ngôn ngữ Pascal là "pas".

### Phân tích mã nguồn của chương trình Hello World

#### Dòng 1

```pascal
Program HelloWorld;
```

Dòng này giúp trình biên dịch biết rằng tên chương trình của bạn là HelloWorld.
Thông thường, nếu bạn chỉ viết một tệp thì dòng này có vẻ không cần thiết nhưng
khi bạn chia mã nguồn thành các tệp nhỏ thì bạn bắt buộc phải viết dòng này để
phân biệt.

#### Dòng 2

Dòng 2 là một dòng trống (dòng không có gì). Những dòng trống không có ảnh hưởng
gì đến hành vi của chương trình. Chúng được thêm vào để khiến mã nguồn dễ đọc
hơn.

#### Dòng 3

```pascal
Begin
```

Đây là dòng có chứa từ khóa `Begin`, dùng để bắt đầu chương trình chính. Sau này
khi học đến chương trình con, bạn sẽ biết rằng từ khóa `Begin` cũng được dùng để
bắt đầu chương trình con.

#### Dòng 4

```pascal
Writeln('Hello, World!');
```

Dòng này sử dụng thủ tục `Writeln()` để in dòng chữ "Hello, World!" ra màn hình.
Lưu ý rằng "Hello, World!" được đặt trong hai dấu phẩy trên (').

#### Dòng 5

```pascal
End.
```

Đây là dòng có chứa từ khóa `End`, dùng để kết thúc chương trình chính. Tương tự
như từ khóa `Begin`, từ khóa `End` cũng được dùng để kết thúc chương trình con
mà sau này chúng ta sẽ động đến. Để ý rằng sau từ khóa `End` dùng để kết thúc
chương trình chính, có một dấu chấm.

> Cần lưu ý rằng, đối với ngôn ngữ lập trình Pascal, cũng như hầu hết các ngôn
ngữ lập trình khác, cần phải tuân theo các quy tắc đã được định ra một cách chặt
chẽ. Ví dụ, bạn phải có một dấu chấm phẩy (`;`) ở cuối các câu lệnh Pascal
(ngoại trừ các từ khóa như `Begin`, `If`, `else`). Sau từ khóa `End` mà kết thúc
chương trình chính, cần phải có dấu chấm. Nếu thiếu dấu chấm này, hay không tuân
theo bất cứ quy tắc nào, trình biên dịch sẽ thông báo chương trình lỗi và không
cho ra chương trình dạng có thể thực thi nữa.

Biên dịch chương trình Pascal
-----------------------------

Chúng ta đã viết chương trình Hello World bằng Pascal. Bây giờ chúng ta cần biên
dịch nó thành dạng thực thi để máy tính có thể hiểu và chạy chương trình. Dưới
đây có 3 phần, hướng dẫn cách biên dịch chương trình Pascal trên các dòng hệ
điều hành Windows, GNU/Linux, và macOS. Tùy theo hệ điều hành mà bạn đang sử
dụng thì hãy đọc phần hướng dẫn tương ứng.

### Trên Windows

Lưu tệp tin _hello.pas_ của bạn (chứa chương trình Hello World) vào ổ C. Ngay
trong ổ C, chứ không trong thư mục nào hết. Sau đó, mở cửa sổ
Command Prompt<sup><a href="#chú-giải">[3]</a></sup> bằng cách nhấn tổ hợp phím
Win + R, sau đó gõ "`cmd`", sau đó nhấn phím Enter. Một cửa sổ như sau sẽ hiện
lên.

![Cửa sổ Command Prompt](../resources/img/cmd_window.png)

Trong cửa sổ đó, gõ "`C:`", nhấn Enter, sau đó gõ "`fpc hello.pas`", rồi nhấn
Enter. Như vậy là trình biên dịch Free Pascal sẽ cho ra một tệp tin mới có tên
là _hello.exe_ trong cùng thư mục . _hello.exe_ chính là dạng thực thi của
chương trình Hello World chúng ta đã viết.

### Trên một bản phân phối của GNU/Linux

Lưu tệp tin _hello.pas_ tại địa chỉ HOME của bạn (ví dụ: _/home/blaisepascal/_).
Sau đó, mở một cửa sổ terminal<sup><a href="#chú-giải">[3]</a></sup>. Trong cửa
sổ đó, gõ "`cd ~`", nhấn Enter, sau đó gõ "`fpc hello.pas`", rồi nhấn Enter.
Trình biên dịch Free Pascal sẽ tạo một tệp mới tên là _hello_, và đó chính là
dạng thực thi của chương trình Hello World chúng ta đã viết (bạn có thể kiểm
chứng bằng cách gõ lệnh `ls` - lệnh này theo mặc định sẽ liệt kê các tệp tin và
thư mục không bị ẩn trong thư mục hiện hành).

### Trên macOS

Lưu tệp tin _hello.pas_ tại địa chỉ HOME của bạn (ví dụ: _/Users/blaisepascal/_).
Sau đó mở một cửa sổ terminal<sup><a href="#chú-giải">[3]</a></sup>. Trong cửa
sổ đó, gõ "`cd ~`", nhấn Enter rồi gõ "`fpc hello.pas`" rồi Enter lần nữa để
thực thi. Trình biên dịch Free Pascal sẽ tạo một tệp mới tên là _hello_, và đó
là tệp thực thi của chương trình Hello World chúng ta đã viết.

> Lưu ý, tệp thực thi trên macOS khác với tệp thực thi trên GNU/Linux, nên bạn
không thể trao đổi tệp thực thi giữa hai hệ điều hành này. Xem phần giải đáp
[này][faq c1 e6] để biết thêm.

[faq c1 e6]: faq.md#nếu-biên-dịch-một-mã-nguồn-pascal-trên-một-hệ-điều-hành-nào-đó-thì-ta-có-thể-đem-chương-trình-đã-được-biên-dịch-sang-một-hệ-điều-hành-khác-để-chạy-chương-trình-đó-không

Chạy chương trình Pascal
------------------------

Chúng ta đã có tệp tin mà chính là dạng thực thi mà trình biên dịch đã tạo ra.
Bây giờ, để chạy chương trình, vẫn cửa sổ Command Prompt/Terminal đó, các bạn gõ
"`hello.exe`" nếu đang ở trong Command Prompt, hay "`./hello`" nếu bạn đang xài
terminal. Nhấn Enter. Bạn sẽ thấy chương trình của mình in ra dòng chữ
"Hello, World!".

![Chương trình đã được thực thi](../resources/img/hello_world_executed.png)

Ghi chú trong chương trình
--------------------------

Khi viết mã nguồn, các lập trình viên thường viết ghi chú, chủ yếu là để giải
thích một đoạn mã này sẽ làm công việc gì. Các ghi chú chỉ dành cho lập trình
viên đọc, chứ không phải để máy tính hiểu, cho nên các trình biên dịch/thông
dịch hoàn toàn bỏ qua các ghi chú.

Trong ngôn ngữ Pascal, khi muốn viết ghi chú trên một dòng, bạn gõ "`//`" vào
đầu dòng, và sau đó là ghi chú của bạn. Khi muốn viết ghi chú trên nhiều dòng,
bạn có thể dùng cặp ký tự "`{`" và "`}`" hoặc "`(*`" và "`*)`". Bất kỳ cái gì ở
giữa các cặp ký tự trên sẽ được coi là ghi chú. Ví dụ như chương trình sau, là
chương trình Hello World có thêm ghi chú. Khi bạn biên dịch và chạy nó, bạn vẫn
sẽ nhận được kết quả giống như chương trình Hello World chúng ta đã viết ở trên.
Các dòng ghi chú được trình biên dịch bỏ qua.

```pascal
{
    Chuong trinh Hello World
    Chuong tring Pascal dau tien cua toi
}
Program HelloWorld;

Begin
    Writeln('Hello, World!');  // In ra dong chu

    (*
        Ket thuc chuong trinh o day.
    *)
End.
```

- - -

Chú giải
--------

1. **Tô sáng cú pháp** : Là một tính năng của các trình
biên tập mã dùng để hiển thị mã với các màu khác nhau cho các thể loại cú pháp
khác nhau.
2. **Trình gỡ lỗi** : Là một phần mềm giúp lập trình viên phát hiện lỗi và gỡ
lỗi trong chương trình của mình.
3. **Command Prompt**, **Terminal** : Command Prompt là cửa sổ cho phép bạn gõ
lệnh để điều khiển máy tính trong hệ điều hành Windows. Terminal là cửa sổ có
chức năng tương tự nhưng là trên các hệ điều hành tựa Unix (như macOS hay các
bản phân phối của GNU/Linux).

- - -

[<< Lời nói đầu](_intro.md)  
[Chương 2 >>](chapter02.md)
