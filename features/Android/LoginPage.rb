require 'calabash-android/cucumber'

class LoginPage < Calabash:: ABase

  def trait
    "button marked:'Sign In'"
  end
end

  def login_user(user,pass)
    enter_text(user_field, user, use_keyboard: false)
    enter_text(pass_field, pass, use_keyboard: false, wait: false)
    touch(login_button_query)

  end

  def user_field
    "* id:'username'"
  end

  def pass_field
    "* id:'password'"
  end

  def login_button_query
    "* id:'login_btn'"
  end

  def verify_error_message
    expected_text = 'Please enter a valid username'
    actual_text = query("* id:'error'", :text).first
    unless expected_text == actual_text
      fail "Error message is incorrect. Expected '#{expected_text}', but got '#{actual_text}'."
    end
  end

