class ParseCsv
  def import(file)
    CSV.foreach(file.path, headers: true) do |row|
      SessionHistory.create! row.to_hash
    end
  end
end
