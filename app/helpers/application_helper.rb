module ApplicationHelper
  def humanize_months(months)
    return "less then a month" if months == 0
    years = (months / 12).floor
    remainder = months % 12
    result = []
    if years > 1
      result << "#{years} years"
    elsif years > 0
      result << "1 year";
    end
    if remainder > 1
      result << "#{remainder} months"
    elsif remainder > 0
      result << "1 month"
    end
    result.join(" ")
  end
end
