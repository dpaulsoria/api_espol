# json.data do
#     json.student do
        json.user @student.user
        json.name @student.name
        json.credits @student.credits
        json.class_schedule @student.class_schedule
        json.exam_schedule @student.exam_schedule
    # end
# end