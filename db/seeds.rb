
class Seed
  def self.start
   create_states
   create_user
   create_cities
   create_comments
  end

  def self.create_comments
    City.all.each do |city|
    city.comments.create!(
    pros: "Good public transportation",
    cons: "lots of gray buildings",
    stars: 2,
    current_resident: false,
    user_id: User.first.id,
    city_id: 10
    )
    city.comments.create!(
    pros: "Nice people",
    cons: "not nice looking",
    stars: 4,
    current_resident: false,
    user_id: User.first.id,
    city_id: 10
    )
    city.comments.create!(
    pros: "Lots",
    cons: "None",
    stars: 5,
    current_resident: false,
    user_id: User.first.id,
    city_id: 10
    )
    end
  end


  def self.create_user
    User.create!(
    username: "Test",
    email: "nicolekmarino@hotmail.com",
    password: "password",
    full_name: "Nicole Marino",
    city: "Denver",
    state: "CO"
    )
  end

  def self.create_states
    states = Array[ ["AK", "Alaska", "Alaska.jpg"],
                ["AL", "Alabama", "Alabama.jpg"],
                ["AR", "Arkansas", "Arkansas.jpg"],
                ["AZ", "Arizona", "Arizona.jpg"],
                ["CA", "California", "California.jpg"],
                ["CO", "Colorado", "Colorado.jpg"],
                ["CT", "Connecticut", "Connecticut.jpg"],
                ["DE", "Delaware", "Delaware.jpg"],
                ["FL", "Florida", "Florida.jpg"],
                ["GA", "Georgia","Georgia.jpg"],
                ["HI", "Hawaii", "Hawaii.jpg"],
                ["IA", "Iowa", "Iowa.jpg"],
                ["ID", "Idaho", "Idaho.jpg"],
                ["IL", "Illinois", "Illinois.jpg"],
                ["IN", "Indiana", "Indiana.jpg"],
                ["KS", "Kansas", "Kansas.jpg"],
                ["KY", "Kentucky", "Kentucky.jpg"],
                ["LA", "Louisiana", "Louisiana.jpg"],
                ["MA", "Massachusetts", "Massachusetts.jpg"],
                ["MD", "Maryland", "Maryland.jpg"],
                ["ME", "Maine", "Maine.jpg"],
                ["MI", "Michigan", "Michigan.jpg"],
                ["MN", "Minnesota", "Minnesota.jpg"],
                ["MO", "Missouri", "Missouri.jpg"],
                ["MS", "Mississippi", "Mississippi.jpg"],
                ["MT", "Montana", "Montana.jpg"],
                ["NC", "North Carolina", "North-Carolina.jpg"],
                ["ND", "North Dakota", "North-Dakota.jpg"],
                ["NE", "Nebraska", "Nebraska.jpg"],
                ["NH", "New Hampshire", "New-Hampshire.jpg"],
                ["NJ", "New Jersey", "New-Jersey.jpg"],
                ["NM", "New Mexico", "New-Mexico.jpg"],
                ["NV", "Nevada", "Nevada.jpg"],
                ["NY", "New York", "New-York.jpg"],
                ["OH", "Ohio", "Ohio.jpg"],
                ["OK", "Oklahoma", "Oklahoma.jpg"],
                ["OR", "Oregon", "Oregon.jpg"],
                ["PA", "Pennsylvania", "Pennsylvania.jpg"],
                ["RI", "Rhode Island", "Rhode-Island.jpg"],
                ["SC", "South Carolina", "South-Carolina.jpg"],
                ["SD", "South Dakota", "South-Dakota.jpg"],
                ["TN", "Tennessee", "Tennessee.jpg"],
                ["TX", "Texas", "Texas.jpg"],
                ["UT", "Utah", "Utah.jpg"],
                ["VA", "Virginia", "Virginia.jpg"],
                ["VT", "Vermont", "Vermont.jpg"],
                ["WA", "Washington", "Washington.jpg"],
                ["WI", "Wisconsin", "Wisconsin.jpg"],
                ["WV", "West Virginia", "West-Virginia.jpg"],
                ["WY", "Wyoming", "Wyoming.jpg"] ]

      states.each do |state|
        State.create!(
        abbreviation: state[0],
        name: state[1],
        image_url:state[2]
        )
      end
    end

    def self.create_cities
      City.create!(name:"Anchorage", state_id:1)
      City.create!(name:"Juneau", state_id:1)
      City.create!(name:"Fairbanks", state_id:1)
      City.create!(name:"Birmingham", state_id:2)
      City.create!(name:"Montgomery", state_id:2)
      City.create!(name:"Mobile", state_id:2)
      City.create!(name:"Little Rock", state_id:3)
      City.create!(name:"Fort Smith", state_id:3)
      City.create!(name:"Fayetteville", state_id:3)
      City.create!(name:"Phoenix", state_id:4)
      City.create!(name:"Tucson", state_id:4)
      City.create!(name:"Mesa", state_id:4)
      City.create!(name:"Los Angeles", state_id:5)
      City.create!(name:"San Diego", state_id:5)
      City.create!(name:"San Jose", state_id:5)
      City.create!(name:"Denver", state_id:6)
      City.create!(name:"Colorado Springs", state_id:6)
      City.create!(name:"Aurora", state_id:6)
      City.create!(name:"Bridgeport", state_id:7)
      City.create!(name:"New Haven", state_id:7)
      City.create!(name:"Stamford", state_id:7)
      City.create!(name:"Wilmington", state_id:8)
      City.create!(name:"Dover", state_id:8)
      City.create!(name:"Newark", state_id:8)
      City.create!(name:"Miami", state_id:9)
      City.create!(name:"Tampa", state_id:9)
      City.create!(name:"Orlando", state_id:9)
      City.create!(name:"Atlanta", state_id:10)
      City.create!(name:"Columbus", state_id:10)
      City.create!(name:"Augusta", state_id:10)
      City.create!(name:"Honolulu", state_id:11)
      City.create!(name:"Hilo", state_id:11)
      City.create!(name:"Kailua", state_id:11)
      City.create!(name:"Des Moines", state_id:12)
      City.create!(name:"Cedar Rapids", state_id:12)
      City.create!(name:"Davenport", state_id:12)
      City.create!(name:"Boise", state_id:13)
      City.create!(name:"Pocatello", state_id:13)
      City.create!(name:"Nampa", state_id:13)
      City.create!(name:"Chicago", state_id:14)
      City.create!(name:"Aurora", state_id:14)
      City.create!(name:"Rockford", state_id:14)
      City.create!(name:"Indianapolis", state_id:15)
      City.create!(name:"Fort Wayne", state_id:15)
      City.create!(name:"Evansville", state_id:15)
      City.create!(name:"Wichita", state_id:16)
      City.create!(name:"Overland Park", state_id:16)
      City.create!(name:"Kansas City", state_id:16)
      City.create!(name:"Louisville", state_id:17)
      City.create!(name:"Lexington", state_id:17)
      City.create!(name:"Bowling Green", state_id:17)
      City.create!(name:"New Orleans", state_id:18)
      City.create!(name:"Baton Rouge", state_id:18)
      City.create!(name:"Shreveport", state_id:18)
      City.create!(name:"Boston", state_id:19)
      City.create!(name:"Worcester", state_id:19)
      City.create!(name:"Springfield", state_id:19)
      City.create!(name:"Baltimore", state_id:20)
      City.create!(name:"Columbia", state_id:20)
      City.create!(name:"Germantown", state_id:20)
      City.create!(name:"Portland", state_id:21)
      City.create!(name:"Lewiston", state_id:21)
      City.create!(name:"Bangor", state_id:21)
      City.create!(name:"Detroit", state_id:22)
      City.create!(name:"Grand Rapids", state_id:22)
      City.create!(name:"Warren", state_id:22)
      City.create!(name:"Minneapolis", state_id:23)
      City.create!(name:"Saint Paul", state_id:23)
      City.create!(name:"	Rochester", state_id:23)
      City.create!(name:"Kansas City", state_id:24)
      City.create!(name:"Saint Louis", state_id:24)
      City.create!(name:"Springfield", state_id:24)
      City.create!(name:"Jackson", state_id:25)
      City.create!(name:"Gulfport", state_id:25)
      City.create!(name:"Southaven", state_id:25)
      City.create!(name:"Billings", state_id:26)
      City.create!(name:"Missoula", state_id:26)
      City.create!(name:"Great Falls", state_id:26)
      City.create!(name:"Charlotte", state_id:27)
      City.create!(name:"Raleigh", state_id:27)
      City.create!(name:"Greensboro", state_id:27)
      City.create!(name:"Fargo", state_id:28)
      City.create!(name:"Bismarck", state_id:28)
      City.create!(name:"Grand Forks", state_id:28)
      City.create!(name:"Omaha", state_id:29)
      City.create!(name:"Lincoln", state_id:29)
      City.create!(name:"Bellevue", state_id:29)
      City.create!(name:"Manchester", state_id:30)
      City.create!(name:"Nashua", state_id:30)
      City.create!(name:"Concord", state_id:30)
      City.create!(name:"Newark", state_id:31)
      City.create!(name:"Jersey City", state_id:31)
      City.create!(name:"Paterson", state_id:31)
      City.create!(name:"Albuquerque", state_id:32)
      City.create!(name:"Las Cruces", state_id:32)
      City.create!(name:"Rio Rancho", state_id:32)
      City.create!(name:"Las Vegas", state_id:33)
      City.create!(name:"Henderson", state_id:33)
      City.create!(name:"Reno", state_id:33)
      City.create!(name:"New York City", state_id:34)
      City.create!(name:"Buffalo", state_id:34)
      City.create!(name:"Rochester", state_id:34)
      City.create!(name:"Columbus", state_id:35)
      City.create!(name:"Cleveland", state_id:35)
      City.create!(name:"Cincinnati", state_id:35)
      City.create!(name:"Oklahoma City", state_id:36)
      City.create!(name:"Tulsa", state_id:36)
      City.create!(name:"Norman", state_id:36)
      City.create!(name:"Portland", state_id:37)
      City.create!(name:"Salem", state_id:37)
      City.create!(name:"Eugene", state_id:37)
      City.create!(name:"Philadelphia", state_id:38)
      City.create!(name:"Pittsburgh", state_id:38)
      City.create!(name:"Allentown", state_id:38)
      City.create!(name:"Providence", state_id:39)
      City.create!(name:"Warwick", state_id:39)
      City.create!(name:"Cranston", state_id:39)
      City.create!(name:"Columbia", state_id:40)
      City.create!(name:"Charleston", state_id:40)
      City.create!(name:"North Charleston", state_id:40)
      City.create!(name:"Sioux Falls", state_id:41)
      City.create!(name:"Rapid City", state_id:41)
      City.create!(name:"Aberdeen", state_id:41)
      City.create!(name:"Memphis", state_id:42)
      City.create!(name:"Nashville", state_id:42)
      City.create!(name:"Knoxville", state_id:42)
      City.create!(name:"Houston", state_id:43)
      City.create!(name:"San Antonio", state_id:43)
      City.create!(name:"Dallas", state_id:43)
      City.create!(name:"Salt Lake City", state_id:44)
      City.create!(name:"West Valley City", state_id:44)
      City.create!(name:"Provo", state_id:44)
      City.create!(name:"Virginia Beach", state_id:45)
      City.create!(name:"Norfolk", state_id:45)
      City.create!(name:"Chesapeake", state_id:45)
      City.create!(name:"Burlington", state_id:46)
      City.create!(name:"Essex", state_id:46)
      City.create!(name:"South Burlington", state_id:46)
      City.create!(name:"Seattle", state_id:47)
      City.create!(name:"Spokane", state_id:47)
      City.create!(name:"Tacoma", state_id:47)
      City.create!(name:"Madison", state_id:48)
      City.create!(name:"Green Bay", state_id:48)
      City.create!(name:"Kenosha", state_id:48)
      City.create!(name:"Charleston", state_id:49)
      City.create!(name:"Huntington", state_id:49)
      City.create!(name:"Parkersburg", state_id:49)
      City.create!(name:"Cheyenne", state_id:50)
      City.create!(name:"Casper", state_id:50)
      City.create!(name:"Laramie", state_id:50)
    end

end

Seed.start
