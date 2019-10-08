<?php

use Illuminate\Database\Seeder;

class NewsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $dataInsert = [
        [
        	'title' => 'Lưu Hương Giang:Chúng tôi đã ly hôn khi mất phương hướng',
        	'description' => 'Lưu Hương Giang chia sẻ cô và Hồ Hoài Anh đã mâu thuẫn, mất phương hướng, dẫn đến ly hôn.',
        	'content' => 'Lưu Hương Giang và Hồ Hoài Anh ly hôn từ tháng 6. Thông tin hai nghệ sĩ chia tay sau hơn 10 năm gắn bó khiến nhiều khán giả tiếc nuối. Tối 7/10, đại diện của nữ ca sĩ xác nhận chuyện ly hôn là có thật.',
            'author' => 'Admin',
        ],

        [
            'title' => 'Hậu trường chụp ảnh nội y của vợ chồng Justin Bieber',
            'description' => 'Mới đây, một số hình ảnh hậu trường buổi chụp quảng cáo nội y của Justin và Hailey Bieber đã bị rò rỉ trên mạng. Cách tạo dáng nhạy cảm của hai vợ chồng khiến khán giả chú ý.',
            'content' => 'Đám cưới của Justin và Hailey Bieber vừa được tổ chức vào ngày 30/9 (giờ Mỹ). 5 ngày sau đó, đôi vợ chồng trẻ xuất hiện nóng bỏng trong bộ ảnh quảng cáo của một thương hiệu nội y nổi tiếng.',
            'author' => 'Admin',
        ],

        [
            'title' => 'Clip ngắn của Sơn Tùng M-TP cán mốc hơn 8 triệu view sau 24 giờ',
            'description' => 'Sơn Tùng M-TP luôn là cái tên sở hữu lượng fan lớn của Vpop, clip ngắn mới đây của anh nhanh chóng cán mốc hơn 8 triệu lượt xem cùng hàng nghìn bình luận sau 24 giờ.',
            'content' => 'Sau khi tung teaser và hình ảnh hậu trường gây tò mò, đoạn clip ngắn có sự xuất hiện của Sơn Tùng M-TP đã chính thức công bố. Clip được nam ca sĩ chia sẻ trên trang cá nhân và nhận được hơn 5.000 bình luận, hầu hết đều khen ngợi vẻ điển trai của “sếp”.',
            'author' => 'Admin',
        ],
    ];
        DB::table('news')->insert($dataInsert);
    }
}
