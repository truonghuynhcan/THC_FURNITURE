<?php
function showNoti($content, $type = 'danger'){
    if(is_array($content)) {
        // If $content is an array, loop through each error and display it
        $_SESSION['noti'] = '';
        foreach ($content as $error) {
            $_SESSION['noti'] .= '<div class="alert alert-' . $type . '" role="alert"> <i class="fa-solid fa-circle-exclamation"></i> ' . $error . '</div>';
        }
    } else {
        // If $content is a string, display a single notification
        $_SESSION['noti'] = '<div class="alert alert-' . $type . '" role="alert"> <i class="fa-solid fa-circle-exclamation"></i> ' . $content . '</div>';
    }
}

function checkNoti() {
    // kiểm tra có lỗi không
    if (isset($_SESSION['noti']) && !empty($_SESSION['noti'])) {
        // kiểm tra phải mảng không
        if (is_array($_SESSION['noti'])) {
            foreach ($_SESSION['noti'] as $notification) {
                echo  $notification;
            }
        } else {
            // If $notification is a string, assume it's a standalone message
            echo $_SESSION['noti'];
        }
        // Clear the notifications after displaying them
        $_SESSION['noti'] = [];
    }
}

/*
function showNoti($content, $type='danger'){
    $_SESSION['noti']= '
    <div class="alert alert-warning" role="alert"> <i class="fa-solid fa-circle-exclamation"></i> '.$content.'</div>
    ';
}

function checkNoti(){
    if(isset($_SESSION['noti'])){
        echo $_SESSION['noti'];
        unset($_SESSION['noti']);
    }
}
*/