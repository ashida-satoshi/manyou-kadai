require 'rails_helper'

RSpec.feature "タスク管理機能", type: :feature do

  scenario "タスク一覧のテスト" do

    Task.create!(name: 'test_task_01', content: 'testtesttest')
    Task.create!(name: 'test_task_02', content: 'samplesample')

    visit tasks_path

    expect(page).to have_content 'testtesttest'
    expect(page).to have_content 'samplesample'
  end

  scenario "タスク作成のテスト" do
    visit new_task_path
    fill_in 'Name', with: 'go'
    fill_in 'Content', with: 'funa56'
    click_on 'Create Task'
    expect(page).to have_content 'go'
    expect(page).to have_content 'funa56'
  end

  scenario "タスク詳細のテスト" do
    Task.create!(name:'test_task_01', content:'testtest', id: 'task.id')
    visit tasks_path(id: 'task.id')
    save_and_open_page
    expect(page).to have_content 'testtest'
  end
end

