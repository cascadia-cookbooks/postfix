require 'spec_helper'

describe 'cop_postfix::default' do
    describe package('postfix') do
        it { should be_installed }
    end

    describe service('postfix') do
        it { should be_enabled }
        it { should be_running }
    end

    describe command('which postfix') do
        its(:stdout) { should match /usr\/sbin\/postfix/ }
        its(:exit_status) { should eq 0 }
    end

    describe user('postfix') do
        it { should exist }
    end

    describe group('postfix') do
        it { should exist }
    end

    describe file('/usr/sbin/postfix') do
        it { should be_owned_by 'root' }
        it { should be_grouped_into 'root' }
        it { should be_mode '755' }
        it { should be_executable }
    end
end
