class LendingPeriod < ActiveHash::Base
  self.data = [
    {id: 1, name: '---'},
    {id: 2, name: '1週間' },
    {id: 3, name: '2週間' },
    {id: 4, name: '3週間' },
    {id: 5, name: '4週間' },
  ]

  include ActiveHash::Associations
  has_many :items

end