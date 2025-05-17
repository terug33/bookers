class Book < ApplicationRecord
  valedates :title,presence:true
  valedates :body,presence:true
end
