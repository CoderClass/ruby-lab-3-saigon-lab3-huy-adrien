require 'rails_helper'

RSpec.describe Product, type: :model do
  describe ".alphabetical" do
    it "returns [] when there are no products" do
      Product.delete_all
      products = Product.alphabetical
      expect(products).to eq []
    end

    it "returns [a] when there is only one product a" do
      a = Product.create!(name: 'test product')
      products = Product.alphabetical
      expect(products).to eq [a]
    end

    it "returns [a,b,c] after I create 3 products c, b, a" do
      c = Product.create!(name: 'c product')
      b = Product.create!(name: 'b product')
      a = Product.create!(name: 'a product')
      products = Product.alphabetical
      expect(products).to eq [a, b, c]
    end
  end
end
