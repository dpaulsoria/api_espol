json.data do
    json.student do
        json.user @student.user
        json.name @student.name
        json.rank @student.rank
        json.courses @student.courses
    end
end