# frozen_string_literal: true

require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get home' do
    get static_pages_home_url
    assert_response :success
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
  end

  test 'should get login' do
    get static_pages_login_url
    assert_response :success
  end

  test 'should get signup' do
    get static_pages_signup_url
    assert_response :success
  end
end
