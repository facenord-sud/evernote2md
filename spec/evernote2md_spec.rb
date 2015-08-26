require 'spec_helper'

describe Evernote2md do
  it 'has a version number' do
    expect(Evernote2md::VERSION).not_to be nil
  end

  it 'print XML' do
    file = File.expand_path 'spec/fixtures/notes.enex'
    Evernote2md.compile(file, nil)
    expect(true).to eq(true)
  end
end
