require 'rspec'
require 'rspec/core/formatters/base_text_formatter'

class SayFormatter < RSpec::Core::Formatters::BaseTextFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def dump_summary(summary)
    output.puts summary.fully_formatted
    phrase = "Tests finished in #{format_time(summary.duration)}, " \
             "#{summary.examples.count} examples, " \
             "#{summary.failed_examples.count} failed, "\
             "#{summary.pending_examples.count} pending"
    `say #{phrase}`
  end

  private

  ##
  # @param [Float]
  # @return [String]
  def format_time(duration)
    if duration > 60
      return "#{(duration / 60.0).round(3)} minutes"
    else
      return "#{duration.round(3)} seconds"
    end
  end
end
