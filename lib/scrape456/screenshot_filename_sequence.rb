module Scrape456

  # Returns filenames for successive screenshots. The resulting filenames sort
  # by date and sequence and include descriptive labels.
  #
  # Usage example:
  #
  # shot_filenames = ScreenshotFilenameSequence.new
  # ...
  # session.save_screenshot(shot_filenames.next(:after_click_event_attendee_data))
  #
  class ScreenshotFilenameSequence
    def initialize
      @counter = 0
    end

    def next(label)
      @counter += 1
      Time.now.utc.iso8601 + '-' + ('%02d' % @counter) + '-' + label.to_s + '.png'
    end
  end
end
