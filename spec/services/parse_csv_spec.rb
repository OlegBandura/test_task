require 'rails_helper'

describe ParseCsv do
  context '#import' do
    subject { described_class.new.import(file) }
    let(:file) { fixture_file_upload('spec/fixtures/session_history.csv') }

    it 'when file added' do
      expect(SessionHistory.count).not_to be_nil
    end

    it 'result with file' do
      expect(described_class.new.import(file)).to be_nil
    end
  end
end
