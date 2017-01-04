#!/usr/bin/env ruby
# Generated by the protocol buffer compiler. DO NOT EDIT!

require 'protocol_buffers'

begin; require 'types.pb'; rescue LoadError; end
begin; require 'structures.pb'; rescue LoadError; end

module PolarData
  # forward declarations
  class PbSportTranslation < ::ProtocolBuffers::Message; end
  class PbSport < ::ProtocolBuffers::Message; end

  class PbSportTranslation < ::ProtocolBuffers::Message
    set_fully_qualified_name "polar_data.PbSportTranslation"

    required ::PbLanguageId, :id, 1
    required ::PbOneLineText, :text, 2
  end

  class PbSport < ::ProtocolBuffers::Message
    # forward declarations

    # enums
    module PbSportType
      include ::ProtocolBuffers::Enum

      set_fully_qualified_name "polar_data.PbSport.PbSportType"

      SPORT_TYPE_SINGLE_SPORT = 1
      SPORT_TYPE_MULTI_SPORT = 2
      SPORT_TYPE_SUB_SPORT = 3
      SPORT_TYPE_FREE_MULTI_SPORT = 4
    end

    set_fully_qualified_name "polar_data.PbSport"

    required ::PbSportIdentifier, :identifier, 1
    required ::PbSportIdentifier, :parent_identifier, 2
    repeated ::PolarData::PbSportTranslation, :translation, 3
    optional :float, :factor, 4
    repeated ::PbSportIdentifier, :stages, 5
    optional ::PolarData::PbSport::PbSportType, :sport_type, 6, :default => ::PolarData::PbSport::PbSportType::SPORT_TYPE_SINGLE_SPORT
    optional :bool, :speed_zones_enabled, 7, :default => false
    optional ::PbSystemDateTime, :created, 100
    optional ::PbSystemDateTime, :last_modified, 101
  end

end
