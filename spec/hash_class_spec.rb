require('rspec')
require('hash_class')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
  describe("#key_exist?") do
    it('checks if a hash has a specific key') do
      test_hash = MyHash.new()
      test_hash.myStore("monkeys", "crazy")
      expect(test_hash.key_exist?("monkeys")).to(eq(true))
    end
  end
end
