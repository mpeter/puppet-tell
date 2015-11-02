# puppet-tell - Tell external people or things about changes to resources
#
# @author     Matt Peter <mpeter@gmail.com>
# @link       https://github.com/mpeter/puppet-tell
# @license    http://opensource.org/licenses/MIT
# @category   modules
# @package    tell
#
# MIT LICENSE
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

require 'puppet/provider'
require 'slack-notifier'

Puppet::Type.type(:tell).provide :slack do

  Puppet::Type.type(:tell).newparam(:channel) do
    desc = "Slack Channel"
  end

  Puppet::Type.type(:tell).newparam(:username) do
    desc = "Slack Username"
  end

  Puppet::Type.type(:tell).newparam(:message) do
    desc = "Message to send"
  end

  def tell
    #notifier = Slack::Notifier.new "#{@resource[:dest]}", channel: "#{@resource[:channel]}", username: "#{@resource[:username]}"
    #notifier.ping "#{@resource[:message]}"
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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", channel: "asdf", username: "chickenlittle"
    notifier.ping "asdf"
  end

end
