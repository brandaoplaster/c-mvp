class CheckDateValidator < ActiveModel::Validator
  
  def validate(record)
    @record = record
    if @record.end_date.present?
      @date_record = Time.new(@record.end_date.year, @record.end_date.month, @record.end_date.day, 23, 59, 59)
      validate_start_date
      validate_end_date
    end
  end

  private

    def validate_start_date
      
      @record.errors.add(:end_date, "This date is passed") if @date_record < Time.zone.now
    end

    def validate_end_date
      @record.errors.add(:end_date, "This informed date is more than 30 days") if @date_record > Time.zone.now + 1.month
    end
end