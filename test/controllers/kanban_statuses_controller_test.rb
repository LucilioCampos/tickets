require 'test_helper'

class KanbanStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kanban_status = kanban_statuses(:one)
  end

  test "should get index" do
    get kanban_statuses_url, as: :json
    assert_response :success
  end

  test "should create kanban_status" do
    assert_difference('KanbanStatus.count') do
      post kanban_statuses_url, params: { kanban_status: { descricao: @kanban_status.descricao, fim: @kanban_status.fim, kanbanStatusKey: @kanban_status.kanbanStatusKey, ordem: @kanban_status.ordem } }, as: :json
    end

    assert_response 201
  end

  test "should show kanban_status" do
    get kanban_status_url(@kanban_status), as: :json
    assert_response :success
  end

  test "should update kanban_status" do
    patch kanban_status_url(@kanban_status), params: { kanban_status: { descricao: @kanban_status.descricao, fim: @kanban_status.fim, kanbanStatusKey: @kanban_status.kanbanStatusKey, ordem: @kanban_status.ordem } }, as: :json
    assert_response 200
  end

  test "should destroy kanban_status" do
    assert_difference('KanbanStatus.count', -1) do
      delete kanban_status_url(@kanban_status), as: :json
    end

    assert_response 204
  end
end
