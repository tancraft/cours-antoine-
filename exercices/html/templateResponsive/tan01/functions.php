<?php

/**
 *il s'agit de la fonction qui va initialiser les widget de la partie admin
 */
function tan_supports()
{
    add_theme_support('title-tag');
    register_sidebar(array(
        'name' => 'Sidebar',
        'id' => 'sidebar',
        'before_widget' => '<div>',
        'after_widget' => '</div>',
        'before_title' => '<h2>',
        'after_title' => '</h2>',
    ));
}
/**
 * fonction pour activer les menus
 */

function wordpressMenus() {
    register_nav_menu('menuPrincipal',__( 'Menu principal' ));
  }


/**
 *
 * cette fonction permet d'activer le normalize css pour les differents navigateurs
 */
function add_normalize_CSS()
{
    wp_enqueue_style('normalize-styles', "https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css");
}

//il s'agit de l'action qui va initialiser les widget de la partie admin
add_action('after_setup_theme', 'tan_supports');
add_action( 'init', 'wordpressMenus' );
