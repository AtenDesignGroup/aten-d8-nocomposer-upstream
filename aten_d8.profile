<?php
use Drupal\Core\Form\FormStateInterface;

function aten_d8_form_install_configure_form_alter(&$form, FormStateInterface $form_state) {

  // Account information defaults
  $form['admin_account']['account']['name']['#default_value'] = 'administrator';
  $form['admin_account']['account']['mail']['#default_value'] = 'shared+sitename@atendesigngroup.com';

  // Date/time settings
  $form['regional_settings']['site_default_country']['#default_value'] = 'US';
  $form['regional_settings']['date_default_timezone']['#default_value'] = 'America/Denver';

}
