module ApplicationHelper

  def uid_generate (length = 9)
    unless length.to_i.between?(1,256)
      raise 'Unique id E[1,256]'
    end
    range = [*'0'..'9',*'A'..'Z',*'a'..'z']
      Array.new(length){ range.sample }.join
  end

end
