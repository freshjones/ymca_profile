<?php

/**
 * @file
 * Defines the OpenY Profile install screen by modifying the install form.
 */

/**
 * Implements hook_install_tasks().
 */
//'ymca_profile_set_configs' => [],
function ymca_profile_install_tasks() {
  return [
    'ymca_profile_set_configs' => [],
  ];
}

/**
 * Set additional config options
 */
function ymca_profile_set_configs(array &$install_state) {
  $config_factory = Drupal::configFactory();
  $config_factory->getEditable('system.date')
    ->set('country.default', 'US')
    ->set('timezone.default', 'America/New_York')
    ->set('timezone.user.configurable', false)
    ->save();
}
