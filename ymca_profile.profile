<?php

/**
 * @file
 * Defines the OpenY Profile install screen by modifying the install form.
 */

use Drupal\openy\Form\ContentSelectForm;
use Drupal\openy\Form\ThirdPartyServicesForm;

/**
 * Implements hook_install_tasks().
 */
function ymca_profile_install_tasks() {
  return [
    'ymca_profile_set_configs' => [
      'type' => 'batch',
    ],
  ];
}

/**
 * Set additional config options
 */
function ymca_profile_set_configs(array &$install_state) {
  $config_factory = Drupal::configFactory();
  $config_factory->getEditable('system.site')
    ->set('name', 'My YMCA')
    ->set('email', 'admin@myymca.org')
    ->save();

  return ['operations' => []];
}
