class Thing < ActiveRecord::Base

  belongs_to :user

  def as_json(opts={})
    r = {
      created_at: created_at.to_i,
      id: id,
    }
    u = {}
    if user
      u[:name] = user.name,
      u[:display_name] = user.display_name,
      u[:magic_number] = magic_number,
      u[:flavor] = flavor
    end
    r.merge!(u)
    r
  end

end
