require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { accion: @task.accion, baseline: @task.baseline, discusion: @task.discusion, estado: @task.estado, fechatermino: @task.fechatermino, owner: @task.owner, tema: @task.tema, tipo: @task.tipo }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { accion: @task.accion, baseline: @task.baseline, discusion: @task.discusion, estado: @task.estado, fechatermino: @task.fechatermino, owner: @task.owner, tema: @task.tema, tipo: @task.tipo }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
