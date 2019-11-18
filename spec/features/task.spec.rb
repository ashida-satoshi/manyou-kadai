require 'rails_helper'

RSpec.feature "タスク管理機能", type: :feature do
  background do
    FactoryBot.create(:task, id:4)
    FactoryBot.create(:second_task, id:5)
    FactoryBot.create(:third_task, id:6)
    #FactoryBot.create(:first_task)
    #FactoryBot.create(:last_task)
  end

  scenario "タスク一覧のテスト" do
    visit tasks_path
    expect(page).to have_content 'sample_name1'
    expect(page).to have_content 'sample_content1'
  end

  scenario "タスク作成のテスト" do
    visit new_task_path
    fill_in 'タスク名', with: 'sample_name1'
    fill_in 'タスク内容', with: 'sample_name1'
    click_on '登録する'
    expect(page).to have_content 'sample_name1'
    expect(page).to have_content 'sample_content1'
  end

  scenario "タスク詳細のテスト" do
    #Task.create!(name:'test_task_01', content:'testtest', id: 'task.id')
    visit tasks_path
    #save_and_open_page
    expect(page).to have_content 'sample_name1'
    expect(page).to have_content 'sample_content1'
  end

  scenario "タスクが作成日時の降順に並んでいるかのテスト" do
    visit tasks_path
    save_and_open_page
    expect(Task.order("created_at DESC").map(&:id)).to eq [6,5,4]
  end
end

