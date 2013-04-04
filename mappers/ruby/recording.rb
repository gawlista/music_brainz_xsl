module MusicBrainz
  class Recording
    include ROXML
        
    xml_accessor :id, from: '@id'

    xml_accessor :title, from: 'title'
    xml_accessor :length, from: 'length'
    xml_accessor :disambiguation, from: 'disambiguation'
    xml_accessor :user_rating, from: 'user-rating'

    xml_accessor :annotation, from: 'annotation', as: Annotation
    xml_accessor :artist_credit, from: 'artist-credit/name-credit', as: [NameCredit]
    xml_accessor :releases, from: 'release-list/release', as: [Release]
    xml_accessor :puids, from: 'puid-list/puid', as: [Puid]
    xml_accessor :isrcs, from: 'isrc-list/isrc', as: [Isrc]
    xml_accessor :tags, from: 'tag-list/tag', as: [Tag]
    xml_accessor :user_tags, from: 'user-tag-list/user-tag', as: [UserTag]
    xml_accessor :rating, from: 'rating', as: Rating
  end
end