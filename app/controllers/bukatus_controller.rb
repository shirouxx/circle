class BukatusController < ApplicationController

  def index
    #帰宅部(7)以外を表示
    @bukatus = Bukatu.first(6)
  end

  def show
    @bukatu = Bukatu.find(params[:id])
    @members = @bukatu.students
    # @member = @members.pluck(:name)
    # 部活に参加している全生徒名簿を作成（全ての生徒の情報と、所属する部活名を表示）
  end

end
