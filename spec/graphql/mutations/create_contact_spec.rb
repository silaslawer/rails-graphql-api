require 'rails_helper'

module Mutations
    RSpec.describe CreateContact, type: :request do
      describe '.resolve' do

        it 'create a contact' do
          author = create(:author)

          post '/graphql', params: { query: query(author_id: author.id) }
          json = JSON.parse(response.body)
          data = json['data']['createBook']

          expect(data).to include(
            'id'              => be_present,
            'title'           => 'Tripwire',
            'publicationDate' => 1999,
            'genre'           => 'Thriller',
            'author'          => { 'id' => author.id.to_s }
          )
        end
      end

      def query(author_id:)
        <<~GQL
          mutation {
            createBook(
              authorId: #{author_id} 
              title: "Tripwire"
              publicationDate: 1999
              genre: Thriller
            ) {
              id
              title
              publicationDate
              genre
              author {
                id
              }
            }
          }
        GQL
      end
    end
end