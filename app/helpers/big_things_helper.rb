module BigThingsHelper
  def task_status(status)
    value = ''
    if status == 10
      value = 'Pending'
    elsif status == 20
      value = 'Processing'
    elsif status == 50
      value = 'Finished'
    else
      value = 'Unknown'
    end

  end

  def can_edit(task)
    if task.responser == User.current
      return true
    end
    false
  end
end
