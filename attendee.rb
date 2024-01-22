class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    # raise 'Please implement the Attendee#haspass? method'
    !@pass_id == false
  end

  def fits_ride?(ride_minimum_height)
    # raise 'Please implement the Attendee#fits_ride? method'
    @height >= ride_minimum_height
  end

  def allowed_to_ride?(ride_minimum_height)
    # raise 'Please implement the Attendee#allowed_to_ride? method'
    self.has_pass? && self.fits_ride?(ride_minimum_height)
  end
end

attendee = Attendee.new(100)
attendee.issue_pass!(1)
assert attendee.allowed_to_ride?(100)
