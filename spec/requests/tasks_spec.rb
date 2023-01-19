require "spec_helper"

describe "Tasks", type: :request do
  before do
    @task = Task.create task: "go to bed"
  end

  describe "GET /tasks" do
    it "display some tasks" do
      visit tasks_path
      expect(page).to have_content "go to bed"
    end

    it "creates a new page" do
      visit tasks_path
      fill_in "Task", with: "go to work"
      click_button "Create Task"

      expect(current_path).to eq(tasks_path)
      expect(page).to have_content "go to work"

      # U# save_and_open_page
    end
  end

  describe "PUT /tasks" do
    it "edits a task" do
      visit tasks_path
      click_link "Edit"

      expect(current_path).to eq(edit_task_path(@task))
      # U# save_and_open_page

      # U# page.should have_content 'go to bed'
      expect(find_field("Task").value).to eq("go to bed")
      fill_in "Task", with: "updated task"
      click_button "Update Task"

      expect(current_path).to eq(tasks_path)

      expect(page).to have_content "updated task"
    end

    it "should not update an empty task" do
      visit tasks_path
      click_link "Edit"

      fill_in "Task", with: ""
      click_button "Update Task"

      expect(current_path).to eq(edit_task_path(@task))
      expect(page).to have_content "There was an error updating your task."
    end
  end

  describe "DELETE /tasks" do
    it "should delete a task" do
      visit tasks_path
      find("#task_#{@task.id}").click_link "Delete"
      expect(page).to have_content "Task has been deleted"
      expect(page).to have_no_content "go to bed"
    end
  end
end
