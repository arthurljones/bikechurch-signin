namespace :legacy do

  module LegacyConnection
    def self.included(base)    
      base.establish_connection(
        :adapter => "mysql2",
        :host => "localhost",
        :username => "root",
        :password => "",
        :database => "signin_db"
      )
    end
  end

  class LegacyPerson < ActiveRecord::Base
    include LegacyConnection
    self.table_name = "people"
    attr_accessible :firstName, :lastName
    has_one :legacy_shop_occupant, :foreign_key => "personID"
    has_one :legacy_member, :foreign_key => "personID"
    has_many :legacy_shop_times, :foreign_key => "personID"
    has_many :legacy_bikes, :foreign_key => "personID"
  end

  class LegacyShopTime < ActiveRecord::Base
    include LegacyConnection
    self.table_name = "shoptime"
    self.inheritance_column = :_type_disabled
    belongs_to :legacy_person, :foreign_key => "personID"
    attr_accessible :start, :end, :notes, :type
    # `start` datetime NOT NULL,
    # `end` datetime DEFAULT NULL,
    # `notes` varchar(200) DEFAULT NULL,
    # `type` enum('shoptime','parts','worktrade','volunteer') NOT NULL,
  end

  class LegacyShopOccupant < ActiveRecord::Base
    include LegacyConnection
    self.table_name = "shopOccupants"
    self.inheritance_column = :_type_disabled
    belongs_to :legacy_person, :foreign_key => "personID"
    attr_accessible :start, :type
    # `start` datetime NOT NULL,
    # `type` enum('shoptime','parts','worktrade','volunteer') NOT NULL,

  end

  class LegacyBike < ActiveRecord::Base
    include LegacyConnection
    self.table_name = "bikes"
    self.inheritance_column = :_type_disabled
    belongs_to :legacy_person, :foreign_key => "personID"
    attr_accessible :type, :color, :brand, :model, :serial
    # `type` varchar(64) NOT NULL,
    # `color` varchar(64) NOT NULL,
    # `brand` varchar(64) DEFAULT NULL,
    # `model` varchar(64) DEFAULT NULL,
    # `serial` varchar(64) NOT NULL,
  end

  class LegacyMember < ActiveRecord::Base
    include LegacyConnection
    self.table_name = "members"
    belongs_to :legacy_person, :foreign_key => "personID"
    attr_accessible :startDate, :endDate, :mailingAddress, :emailAddress, :phoneNmuber, :donation, :notes
    # `startDate` date NOT NULL,
    # `endDate` date DEFAULT NULL,
    # `mailingAddress` varchar(200) DEFAULT NULL,
    # `emailAddress` varchar(64) DEFAULT NULL,
    # `phoneNumber` varchar(32) DEFAULT NULL,
    # `donation` int(11) NOT NULL,
    # `notes` varchar(200) DEFAULT NULL,
  end

  class LegacyFeedback < ActiveRecord::Base
    include LegacyConnection
    self.table_name = "feedback"
    attr_accessible :date, :name, :feedback
    # `date` datetime NOT NULL,
    # `name` varchar(64) DEFAULT NULL,
    # `feedback` varchar(500) NOT NULL,
  end

  desc "Migrate data from legacy mysql signin_db database"
  task :migrate => :environment do

    #people = LegacyPerson.includes(:legacy_shop_times).order{count().asc}

    people = LegacyPerson.joins(:legacy_shop_times).select{`people.*, count(*) as visits`}.group{shoptime.personID}.order{`visits desc`}
    ap people.collect { |person| [person, person.visits] }
  end

end
