module FlashHelper
  FLASH_MAP = {
    'alert' => 'danger',
    'success' => 'success',
    'info' => 'info',
    'notice' => 'info',
    'warning' => 'warning'
  }
  def flash_key_to_alert(key)
    out = FLASH_MAP[key]
    raise "ERROR: invalid flash key -> #{key}" unless out.present?
    out
  end
end
