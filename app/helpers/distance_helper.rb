module DistanceHelper

  def self.haversine lat1, long1, lat2, long2
    lat1 = to_radians(lat1)
    long1 = to_radians(long1)
    lat2 = to_radians(lat2)
    long2 = to_radians(long2)

    long_diff = long2 - long1
    lat_diff = lat2 - lat1

    a = Math.sin(lat_diff / 2) ** 2 + Math.cos(lat1) * Math.cos(lat2) * Math.sin(long_diff / 2) ** 2
    c = 2 * Math.asin(Math.sqrt(a))
    r = 3965
    c * r
  end

  def self.to_radians(coord)
    if coord
      return coord * Math::PI / 180
    else
      return 0
    end
  end
end