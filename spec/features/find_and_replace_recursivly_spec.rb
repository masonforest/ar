require 'spec_helper'

describe 'ar' do
  it 'finds and replaces strings' do
    write('before.txt', 'before')

    Far::CLI.run('before', 'after', 'before.txt')

    expect(read('before.txt')).to eq 'after'
  end

  it 'finds and replaces regular expressions' do
    write('before.txt', ':key => :value')

    Far::CLI.run(':([^ ]*)(\s*)=>', '\1:', 'before.txt')

    expect(read('before.txt')).to eq 'key: :value'
  end

  it 'finds and replaces recursivley' do
    write('test/before1.txt', 'before1')
    write('test/subdirectory/before2.txt', 'before2')

    Far::CLI.run('before', 'after', 'test')

    expect(read('test/before1.txt')).to eq 'after1'
    expect(read('test/subdirectory/before2.txt')).to eq 'after2'
  end
end

def write(file_name, contents)

  # If the file is in a directory create it
  if file_name.match(/(.*)\//)
    FileUtils.mkdir_p($~[0])
  end

  File.open(file_name, 'w') do |f|
    f.write(contents)
  end
end

def read(file_name)
  File.read(file_name)
end
