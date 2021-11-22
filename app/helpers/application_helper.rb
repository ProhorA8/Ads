module ApplicationHelper
  # Этот метод возвращает ссылку на фото объявления, если она у него есть.
  # Или ссылку на дефолтную аватарку, которая лежит в app/assets/images
  def ad_photo(every_ad)
    if every_ad.photo.present?
      every_ad.photo
    else
      asset_path 'ad.jpg'
    end
  end

  # Хелпер, рисующий span тэг с иконкой из font-awesome
  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class}"
  end
end
