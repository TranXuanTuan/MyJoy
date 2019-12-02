<div id="header-search" class="header-search">
            <button type="button" class="close">×</button>
            <form action="search" method="post" class="header-search-form">
            @csrf
                <input name="key" type="search" value="" placeholder="Type here........" />
                <button type="submit" class="search-btn">
                    <i class="flaticon-magnifying-glass"></i>
                </button>
            </form>
        </div>