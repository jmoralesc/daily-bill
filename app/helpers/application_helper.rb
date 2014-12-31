# Helper for Aplication
module ApplicationHelper
  def bootstrap_class_for flash_type
    case flash_type
      when 'success'
        "alert-success"
      when 'error'
        "alert-error"
      when 'alert'
        "alert-block"
      when 'notice'
        "alert-info"
      else
        flash_type.to_s
    end
  end
  def get_total(instalments)
    total = 0
    instalments.each do |instalment|
      total += instalment.amount
    end
    total
  end
end
