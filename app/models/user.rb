class User < ActiveRecord::Base
  validates :email, :session_token, presence: true, uniqueness: true
  validates :fname, :lname, :password_digest, :points, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  after_initialize :ensure_session_token

  attr_reader :password

  def self.find_or_create_by_auth_hash(auth_hash)
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    user = User.find_by(provider: provider, uid: uid)

    return user if user

    user = User.create!(
      email: auth_hash[:info][:email],
      lname: auth_hash[:info][:last_name],
      fname: auth_hash[:info][:first_name],
      provider: provider,
      uid: uid,
      password: SecureRandom::urlsafe_base64(12)
    )

    user
  end

  def self.find_by_credentials(email, password)
    user = User.find_by_email(email)
    return nil unless user
    return user.correct_password?(password) ? user : nil
  end

  def self.generate_session_token
    SecureRandom.urlsafe_base64(16)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def correct_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = User.generate_session_token
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token = User.generate_session_token
  end
end
