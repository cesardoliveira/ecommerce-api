shared_examples "name searchable concern" do |factory_name|
  let!(:search_parms) { "Example" }
  let!(:records_to_find) do 
    (0..3).to_a.map { |index| create(factory_name, name: "Example #{index}") }
  end
  let!(:records_to_ignore) { create_list(factory_name, 3) }

  it "Found records with expression in :name" do 
    found_records = described_class.search_by_name(search_parms)
    expect(found_records.to_a).to contain_exactly(*records_to_find)
  end

  it "Ignores records without expression in :name" do
    found_records = described_class.search_by_name(search_parms)
    expect(found_records.to_a).to_not include(*records_to_ignore)
  end
end