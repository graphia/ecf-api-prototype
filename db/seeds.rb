ab_01 = AppropriateBody.create!(name: "Appropriate body one")
ab_02 = AppropriateBody.create!(name: "Appropriate body two")
_ab_03 = AppropriateBody.create!(name: "Appropriate body three")

ip_01 = InductionProgramme.create!
_ip_02 = InductionProgramme.create!
_ip_03 = InductionProgramme.create!

teacher_01 = Teacher.create!(name: "Teacher one")
teacher_02 = Teacher.create!(name: "Teacher two")
teacher_03 = Teacher.create!(name: "Teacher three")
teacher_04 = Teacher.create!(name: "Teacher four")
teacher_05 = Teacher.create!(name: "Teacher five")
teacher_06 = Teacher.create!(name: "Teacher six")
teacher_07 = Teacher.create!(name: "Teacher seven")
teacher_08 = Teacher.create!(name: "Teacher eight")

[teacher_01, teacher_02, teacher_03, teacher_04, teacher_05, teacher_06, teacher_07, teacher_08].each do |teacher|
  teacher.email_addresses.create!(email: teacher.name.gsub(" ", "-").downcase + "@example.com")
end

mat_01    = School.create!(name: "MAT one")
school_01 = School.create!(name: "School one", mat: mat_01)
school_02 = School.create!(name: "School two")
school_03 = School.create!(name: "School three")

tenureship_01 = Tenureship.create!(school: school_01, teacher: teacher_01, started_on: 5.years.ago, finished_on: 3.year.ago)
tenureship_02 = Tenureship.create!(school: school_02, teacher: teacher_01, started_on: 3.years.ago)
tenureship_03 = Tenureship.create!(school: school_02, teacher: teacher_02, started_on: 6.years.ago)
tenureship_04 = Tenureship.create!(school: school_01, teacher: teacher_03, started_on: 9.years.ago, finished_on: 3.year.ago)
tenureship_05 = Tenureship.create!(school: school_02, teacher: teacher_04, started_on: 6.years.ago, finished_on: 2.year.ago)
tenureship_06 = Tenureship.create!(school: school_03, teacher: teacher_03, started_on: 3.years.ago)
tenureship_07 = Tenureship.create!(school: school_03, teacher: teacher_03, started_on: 3.years.ago)
tenureship_08 = Tenureship.create!(school: school_02, teacher: teacher_04, started_on: 2.years.ago)
tenureship_09 = Tenureship.create!(school: school_02, teacher: teacher_05, started_on: 4.years.ago)
tenureship_10 = Tenureship.create!(school: mat_01, teacher: teacher_07, started_on: 4.years.ago)

Mentorship.create!(tenureship: tenureship_01, mentor: teacher_03) do |mentorship|
  InductionPeriod.create!(
    mentorship:,
    started_on: 3.years.ago,
    finished_on: 18.months.ago,
    appropriate_body: ab_01,
    induction_programme: ip_01
  )
end

Mentorship.create!(tenureship: tenureship_02, mentor: teacher_01) do |mentorship|
  InductionPeriod.create!(
    mentorship:,
    started_on: 2.years.ago,
    finished_on: 9.months.ago,
    appropriate_body: ab_01,
    induction_programme: ip_01
  )
end

Mentorship.create!(tenureship: tenureship_04, mentor: teacher_05) do |mentorship|
  InductionPeriod.create!(
    mentorship:,
    started_on: 1.years.ago,
    finished_on: 8.months.ago,
    appropriate_body: ab_01,
    induction_programme: ip_01
  )

  InductionPeriod.create!(
    mentorship:,
    started_on: 8.years.ago,
    finished_on: 5.months.ago,
    appropriate_body: ab_02,
    induction_programme: ip_01
  )
end

Mentorship.create!(tenureship: tenureship_03, mentor: teacher_03)
Mentorship.create!(tenureship: tenureship_05, mentor: teacher_04)
Mentorship.create!(tenureship: tenureship_06, mentor: teacher_07)
Mentorship.create!(tenureship: tenureship_06, mentor: teacher_06)
Mentorship.create!(tenureship: tenureship_07, mentor: teacher_02)
Mentorship.create!(tenureship: tenureship_08, mentor: teacher_03)
Mentorship.create!(tenureship: tenureship_09, mentor: teacher_02)
Mentorship.create!(tenureship: tenureship_10, mentor: teacher_08)
