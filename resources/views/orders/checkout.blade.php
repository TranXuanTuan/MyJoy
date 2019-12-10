@extends('layouts.front.master')
@section('content')
    <div class="container">
        <div id="content">
            
            <form action="{{route('checkout')}}" method="post" class="beta-form-checkout">
                @csrf
                <div class="row">
                    <div class="col-sm-6">
                        <h4>Đặt hàng</h4>
                        <div class="space20">&nbsp;</div>
                        @if(session('flash_message'))
                            <div class="alert alert-success">
                                {{session('flash_message')}}
                            </div>
                        @endif
                        <div class="form-group">
                            <label for="name">Họ tên*</label>
                            <input type="text" name="name" placeholder="Họ tên" value="{{Auth::user()->name}}" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label for="email">Email*</label>
                            <input type="email" name="email" value="{{Auth::user()->email}}" placeholder="expample@gmail.com" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="notes">Ghi chú</label>
                            <textarea name="note" class="form-control" ></textarea>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="your-order">
                            <div class="your-order-head"><h5>Đơn hàng của bạn</h5></div>
                            <div class="your-order-body" style="padding: 0px 10px">
                                <div class="your-order-item">
                                    <div>
                                        @if(Session::has('cart'))
                                        @foreach($product_cart as $cart)
                                    <!--  one item   -->
                                        <div class="media">
                                            <img width="25%" src="/upload/products/{{$cart['item']['picture']}}" alt="" class="pull-left">
                                            <div class="media-body">
                                                <p class="font-large">{{$cart['item']['name_product']}}</p>
                                                <span class="color-gray your-order-info">Don gia: {{number_format($cart['price'])}} $</span>
                                                <span class="color-gray your-order-info">So luong: {{$cart['qty']}}</span>
                                            </div>
                                        </div>
                                    <!-- end one item -->
                                    @endforeach
                                    @endif
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="your-order-item">
                                    <div class="pull-left"><p class="your-order-f18">Tổng tiền:</p></div>
                                    <div class="pull-right"><h5 class="color-black">@if(Session::has('cart')){{number_format($totalPrice)}}@else 0 @endif $</h5></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="your-order-head"><h5>Hình thức thanh toán</h5></div>
                            
                            <div class="your-order-body">
                                <ul class="payment_methods methods">
                                    <li class="payment_method_bacs">
                                        <input id="payment_method_bacs" type="radio" class="input-radio" value="COD" checked="checked" data-order_button_text="" name="payment">
                                        <label for="payment_method_bacs">Thanh toán khi nhận hàng </label>
                                        <div class="payment_box payment_method_bacs" style="display: block;">
                                            Cửa hàng sẽ gửi hàng đến địa chỉ của bạn, bạn xem hàng rồi thanh toán tiền cho nhân viên giao hàng
                                        </div>                      
                                    </li>

                                    <li class="payment_method_cheque">
                                        <input id="payment_method_cheque" type="radio" class="input-radio" value="ATM" data-order_button_text="" name="payment">
                                        <label for="payment_method_cheque">Chuyển khoản </label>
                                        <div class="payment_box payment_method_cheque" style="display: none;">
                                            Chuyển tiền đến tài khoản sau:
                                            <br>- Số tài khoản: 123 456 789
                                            <br>- Chủ TK: Nguyễn A
                                            <br>- Ngân hàng ACB, Chi nhánh TPHCM
                                        </div>                      
                                    </li>
                                    
                                </ul>
                            </div>

                            <div class="text-center"><button type="submit" class="btn oneMusic-btn m-2" >Đặt hàng <i class="fa fa-angle-double-right"></i></button></div>
                        </div> <!-- .your-order -->
                    </div>
                </div>
            </form>
        </div> <!-- #content -->
    </div> 
@endsection