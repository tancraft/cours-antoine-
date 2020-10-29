<?php
/**
 * active les fonctions dans l'editeur de themes
 */
function theme2_Supports()
{
    add_theme_support('title-tag');
}

function register_my_menu()
{
    register_nav_menu( 'main-menu', 'Menu principal' );
}

add_action( 'after_setup_theme', 'register_my_menu' );
add_action('after_setup_theme','theme2_Supports');
