require 'rails_helper'

describe SessionHistoryTitle do
  context '#call' do
    subject { described_class.new.call }
    it 'table headers' do
      expect(subject.count).to eq 17
      is_expected.to include('id', 'session_id', 'started_by', 'created_at')
    end
  end
end
