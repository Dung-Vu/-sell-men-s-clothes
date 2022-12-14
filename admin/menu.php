<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.php" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light" style="font-size:17px;"><?php echo$row_quanly['tenQuanLy']?></span>
    </a>
    <!-- Sidebar -->
    <div class="sidebar">
      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search"style="display: flex;">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <a href="index.php" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Thống Kê
              </p>
            </a>     
          <a href="pages/product.php" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Quản Lý Sản Phẩm
              </p>
            </a> 
            <a href="pages/category.php" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                Quản Lý Danh Mục
              </p>
            </a> 
            <a href="pages/bills.php" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Quản Lý Hóa Đơn
              </p>
            </a>
            <a href="pages/staff.php" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p>
                Quản Lý Nhân Viên
              </p>
            </a>
            <a href="pages/users.php" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Quản Lý Khách Hàng
              </p>
            </a>
             <a href="pages/warehouse.php" class="nav-link">
              <i class="nav-icon fas fa-plus"></i>
              <p>
                Quản Lý Nhập/Xuất Kho
              </p>
            </a>                
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>