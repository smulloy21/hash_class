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
  describe("#value_exist?") do
    it('checks if a hash has a specific value') do
      test_hash = MyHash.new()
      test_hash.myStore("monkeys", "crazy")
      expect(test_hash.value_exist?("crazy")).to(eq(true))
    end
  end
  describe("#hash_length") do
    it('checks length of hash') do
      test_hash = MyHash.new()
      test_hash.myStore("monkeys", "crazy")
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "goofy")
      expect(test_hash.hash_length()).to(eq(3))
    end
  end
  describe('#hash_merge') do
    it('merges two hashes into one') do
      test_hash_a = MyHash.new()
      test_hash_a.myStore("monkeys", "crazy")
      test_hash_b = MyHash.new()
      test_hash_b.myStore("puppies", "goofy")
      expect(test_hash_a.hash_merge(test_hash_b)).to(eq([["monkeys", "crazy"], ["puppies", "goofy"]]))
    end
  end
end
