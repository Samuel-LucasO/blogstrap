class Article < ApplicationRecord
  belongs_to :category
  belongs_to :user

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 10 }

  paginates_per 2

  scope :desc_order, -> {order(created_at: :desc) }
  scope :without_highlights, ->(ids) { where("id NOT IN( #{ids})") if ids.present? } # como foi possível fazer a função apenas em uma linha, utilizamos "->"
  scope :filter_by_category, ->(category) {where category_id: category.id if category.present?}
  scope :filter_by_archive, lambda { |month_year| # aqui não foi possivel fazer em uma linha, então utilizamos "lambda" para declarar a função
    if month_year
      date = Date.strptime(month_year, '%B, %Y')
      where created_at: date.beginning_of_month..date.end_of_month.next_day
    end
  }
end
