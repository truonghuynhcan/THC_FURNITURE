<!-- MAIN -->
<main>
    <div class="head-title">
        <div class="left">
            <h1>Quản lý sản phẩm</h1>
            <ul class="breadcrumb">
                <li>
                    <a href="#">Quản lý sách</a>
                </li>
                <li><i class='bx bx-chevron-right'></i></li>
                <li>
                    <a class="active" href="#">Trang chủ</a>
                </li>
            </ul>
        </div>
        <!-- <a href="#" class="btn-download">
            <i class='bx bxs-cloud-download'></i>
            <span class="text">Download PDF</span>
        </a> -->
    </div>

    <div class="table-data">
        <div class="order">
            <div class="head">
                <h3>Sản phẩm ( 3x san pham)
                </h3>
                <!-- <i class='bx bx-search'></i> -->
                <!-- <i class='bx bx-filter'></i> -->
            </div>
            <table>
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Tên sp</th>
                        <th scope="col">Loại sp</th>
                        <th scope="col" class="text-end">Giá</th>
                        <th scope="col" class="text-end">Tồn kho</th>
                        <th scope="col" class="text-end">Lượt bán</th>
                        <th scope="col"  class="text-center">Chỉnh sửa</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($products as $pro):?>
                    <tr>
                        <td scope="row" class="text-center"><?=$pro['Id']?></td>
                        <td><?=$pro['TenSanPham']?></td>
                        <td><?=$pro['Loai']?></td>
                        <td class="text-end"><?=number_format($pro['DonGia'],0,',','.')?> ₫</td>
                        <td class="text-end"><?=number_format($pro['TonKho'],0,',','.')?></td>
                        <td class="text-end"><?=number_format($pro['LuotBan'],0,',','.')?></td>
                        <td class="text-center">
                            <a href="<?=APPURL?>ad_products/update/<?=$pro['Id']?>" class="btn btn-sm btn-warning">Xửa</a>
                            <button class="btn btn-sm btn-secondary">Xóa</button>
                        </td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
        <div class="table-data" style="flex-direction: row; gap:20px; padding: 0; background-color: var(--grey)">
            <div class="order">
                <div class="head">
                    <h3>Thể loại (<?=$categoryCount ?>)</h3>
                    <a href="#" style="color: var(--blue);">Thêm thể loại mới</a>
                    <!-- <i class='bx bx-search'></i> -->
                    <!-- <i class='bx bx-filter'></i> -->
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Tên thể loại</th>
                            <th style="text-align: center;">Số lượng sách</th>
                            <th style="text-align: center;">Chỉnh sửa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($listGenres as $genres):
                            ?>
                            <tr>
                                <td>
                                    <?= $genres['Id'] ?>
                                </td>
                                <td>
                                    <?= $genres['TenTheLoai'] ?>
                                </td>
                                <td style="text-align: center;">
                                    <?= $genres['bookCount'] ?>
                                </td>
                                <td style="text-align: center;">
                                    <a href="index.php?pg=ad&active=book_genreUpdate&genreId=<?= $genres['Id'] ?>" class="btn-update">
                                        <i class="fa-regular fa-pen-to-square fa-xl" style="color: var(--blue);"></i>
                                    </a>
                                    <a href="index.php?pg=ad&active=book_management&deleteCategoryId=<?= $genres['Id'] ?>" class="btn-del">
                                        <i class="fa-solid fa-trash fa-xl"
                                            style="color: var(--red); margin-left: 1rem;"></i>
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
            <div class="order">
                <div class="head">
                    <h3>Tác giả (
                        <?= $authorCount ?>)
                    </h3>
                    <!-- <i class='bx bx-search'></i> -->
                    <!-- <i class='bx bx-filter'></i> -->
                </div>
                <table>
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Tên tác giả</th>
                            <th style="text-align: center;">Số lượng sách</th>
                            <th style="text-align: center;">Chỉnh sửa</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                        foreach ($listAuthors as $authors):
                            ?>
                            <tr>
                                <td>
                                    <?= $authors['Id'] ?>
                                </td>
                                <td>
                                    <?= $authors['HoVaTen'] ?>
                                </td>
                                <td style="text-align: center;">
                                    <?= $authors['bookCount'] ?>
                                </td>
                                <td style="text-align: center;">
                                    <a href="index.php?pg=ad&active=book_authorUpdate&authorId=<?= $authors['Id'] ?>" class="btn-update">
                                        <i class="fa-regular fa-pen-to-square fa-xl" style="color: var(--blue);"></i>
                                    </a>
                                    <a href="index.php?pg=ad&active=book_management&deleteAuthorById=<?= $authors['Id'] ?>" class="btn-del">
                                        <i class="fa-solid fa-trash fa-xl"
                                            style="color: var(--red); margin-left: 1rem;;"></i>
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
<!-- MAIN -->