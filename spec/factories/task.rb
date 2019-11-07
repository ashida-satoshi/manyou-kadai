# 「FactoryBotを使用します」という記述
FactoryBot.define do

    factory :task do
      name { 'sample_name1' }
      content { 'sample_content1' }
      created_at{Time.zone.now}
    end
  
    factory :second_task, class: Task do
      name { 'sample_name2' }
      content { 'sample_content2' }
      created_at{Time.zone.now+ 1.days}
    end

    factory :third_task, class: Task do
      name { 'sample_name3' }
      content { 'sample_content3' }
      created_at{Time.zone.now+ 2.days}
    end

    #factory :first_task, class: Task do
      #name { '１番古い作成したタスク' }
      #content { '１番古いタスクの詳細' }
    #end

    #factory :last_task, class: Task do
      #name { '一番最新の作成したタスク' }
      #content { '一番最新のタスクの詳細' }
    #end
  end