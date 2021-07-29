class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :place
      t.string :weather
      t.string :temperature
      t.string :water_temperature
      t.string :SPG_start
      t.string :SPG_finish
      t.string :dive_start
      t.string :dive_finish
      t.string :depth
      t.string :wind_direction
      t.string :wave
      t.string :fish
      t.date    :date
      t.text    :impression

      t.timestamps
    end
  end
end

# 場所 string
# ポイント名 string
# 天気 integer
# 気温 integer
# 残圧(開始時) integer
# 残圧(終了時) integer
# 潜水開始 integer
# 潜水終了 integer
# 潜水時間 integer
# 水温 integer
# 水深 integer
# 風向き integer
# 波 integer
# 日時/日付 date
# 魚の種類 integer
# 感想 text