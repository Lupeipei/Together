require "rails_helper"

feature "register and login", :type => :feature do
  scenario "register" do
    visit "/users/sign_up"
    expect(page).to have_content("注册")
    within("#new_user") do
      fill_in " 邮箱", with: "foo@example.com"
      fill_in " 密码", with: "12345678"
      fill_in " 确认密码", with: "12345678"
    end

    click_button "注 册"
    expect(page).to have_content("您的帐号已注册成功，如无意外，您将收到一封确认邮件。")

    user = User.last
    expect(user.email).to eq("foo@example.com")
  end

  scenario "login and logout" do
    user = create(:user)

    visit "/users/sign_in"

    within("#new_user") do
      fill_in "邮箱", with: user.email
      fill_in "密码", with: user.password
    end
    click_button "登 录"
    expect(page).to have_content("登录成功。")
    click_link "Hi!, #{user.username}"
    expect(page).to have_content(' 登出')
    save_and_open_page
    # click_on " 登出"
    page.find(:xpath, "//a[@href='/users/sign_out']").click
    expect(page).to have_content "退出成功。"
  end
end
