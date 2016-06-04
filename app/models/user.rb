class User < ActiveRecord::Base
  def self.from_omniauth(auth_hash)
    user = self.find_by(uid: auth_hash["uid"], provider: auth_hash["provider"])
      if !user.nil?
        return user
      else
      user = User.new
      user.provider = auth_hash.provider
      user.uid = auth_hash.uid
      user.name = auth_hash.info.name
      user.oauth_token = auth_hash.credentials.token
      user.oauth_expires_at = Time.at(auth_hash.credentials.expires_at)
      end
      if user.save!
        return user
      else
        return nil
      end
  end
end
