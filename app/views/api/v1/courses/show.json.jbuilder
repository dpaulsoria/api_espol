json.data do
    json.course do
        json.code @course.code
        json.name @course.name
        json.credits @course.credits
        json.par @course.par
        json.aula @course.aula
        json.mode @course.mode
        json.campus @course.campus
        json.class_schedule @course.class_schedule
        json.exam_schedule @course.exam_schedule
        json.professor @course.professor
        json.max_capacity @course.max_capacity
        json.current_capacity @course.current_capacity
    end
end