module RoomsHelper
  def humanize(feature)
    feature.eql? true ? 'yes' : 'no'
  end
end
