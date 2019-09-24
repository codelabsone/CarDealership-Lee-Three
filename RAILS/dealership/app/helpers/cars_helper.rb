module CarsHelper

    def image_for(car)
      if car.image_file_name.blank?
        link_to(image_tag('placeholder.png'), car_path(car))
      else
        link_to(image_tag(car.image_file_name), car_path(car))
      end
    end

end
