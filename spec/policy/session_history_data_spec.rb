require 'rails_helper'

describe SessionHistoryData do
  context '#call' do
    subject { described_class.new.call }

    it 'with empty table' do
      is_expected.to be_empty
    end

    context 'with data' do
      before do
        file = fixture_file_upload('spec/fixtures/session_history.csv')
        ParseCsv.new.import(file)
      end

      it 'test data' do
        is_expected.not_to be_empty
      end
    end
  end
end
