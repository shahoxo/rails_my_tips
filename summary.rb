# encoding: utf-8
class Summary < ActiveRecord::Base
  attr_accessible :depth_key, :summary_count, :width_key

  # 縦×横：mn:3のデータをm:nに射影することを目的とする。
  # 主な使用用途は、データ集計。
  # 例：
  # | 月 | 種 | 量 |     |　  | A | B | C |
  # | 9月| Ａ | １ |     | 9月| 1 | 2 | 0 |
  # | 9月| Ｂ | ２ | --> |10月| 3 | 0 | 0 |
  # |10月| Ａ | ３ |     |11月| 0 | 0 | 1 |
  # |11月| Ｃ | １ |


  def self.Projection
    #1st column: 縦
    #2nd column: 横
    #3rd column: データ
    set_depth
    set_width
    summary_map = Hash.new{| hash, key | hash[key] = {}}
    @depth.each do |depth_key|
      @width.each do |width_key|
        summary_map[depth_key][width_key] =
            self.select(:summary_count).where(depth_key: depth_key).where(width_key: width_key)
      end
    end
    summary_map
  end

  def self.set_depth
    @depth = self.select("DISTINCT #{:depth_key}").order(:depth_key).map(&:depth_key)
  end

  def self.set_width
    @width = self.select("DISTINCT #{:width_key}").order(:width_key).map(&:width_key)
  end

end
