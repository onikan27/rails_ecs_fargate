class TestsController < ApplicationController
  def index
    head :ok
  end
end
# docker push 690659219943.dkr.ecr.ap-northeast-1.amazonaws.com/rails_ecs_fargate_server:latest
# docker push 690659219943.dkr.ecr.ap-northeast-1.amazonaws.com/rails_ecs_fargate_web:latest
# docker tag rails_ecs_fargate_web:latest 690659219943.dkr.ecr.ap-northeast-1.amazonaws.com/rails_ecs_fargate_web:latest
# docker tag rails_ecs_fargate_server:latest 690659219943.dkr.ecr.ap-northeast-1.amazonaws.com/rails_ecs_fargate_server:latest

