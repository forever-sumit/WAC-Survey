# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "===========Section 1=================="
section = Section.create(name: 'Who asked the questions (Data collectors)', in_order: 1)
s1_q1 = section.questions.create(question_title: 'Was the person asking the questions a professionally trained enumerator?', in_order: 1)
s1_q1.answers.create(answer_title: 'Yes, professionally trained enumerator
', answer_score: 1)
s1_q1.answers.create(answer_title: 'No, not professionally trained enumerator', answer_score: 3)
s1_q1.answers.create(answer_title: 'Unsure', answer_score: 99)

s1_q2 = section.questions.create(question_title: 'Was the person asking the questions a potential friend or neighbour?', in_order: 2)
s1_q2.answers.create(answer_title: 'Yes', answer_score: 3)
s1_q2.answers.create(answer_title: 'No', answer_score: 1)
s1_q2.answers.create(answer_title: 'Unsure', answer_score: 99)

s1_q3 = section.questions.create(question_title: 'What the person collecting the questions the same gender as the respondent?', in_order: 3)
s1_q3.answers.create(answer_title: 'Yes, always', answer_score: 1)
s1_q3.answers.create(answer_title: 'Yes, when possible', answer_score: 2)
s1_q3.answers.create(answer_title: 'No', answer_score: 3)
s1_q3.answers.create(answer_title: 'Unsure', answer_score: 99)


s1_q4 = section.questions.create(question_title: 'Was the person asking the questions of a higher status than the respondent, lower status than the respondent or same status?', in_order: 4)
s1_q4.answers.create(answer_title: 'Person asking question was usually higher status', answer_score: 3)
s1_q4.answers.create(answer_title: 'Person asking question was usually same status', answer_score: 1)
s1_q4.answers.create(answer_title: 'Person asking question was usually lower status', answer_score: 3)
s1_q4.answers.create(answer_title: 'Unsure', answer_score: 99)

puts "========================Section 2==================================="
section = Section.create(name: 'Who answered the questions (Data respondents)
', in_order: 2)

s2_q1 = section.questions.create(question_title: 'Who was present during the data collection other than the respondent?', in_order: 1)
s2_q1.answers.create(answer_title: 'Only the respondent and enumerator were present', answer_score: 1)
s2_q1.answers.create(answer_title: 'Only the respondent, the enumerator, and those the respondent requested were present', answer_score: 2)
s2_q1.answers.create(answer_title: 'Many people were present', answer_score: 3)
s2_q1.answers.create(answer_title: 'Unsure', answer_score: 99)


s2_q2 = section.questions.create(question_title: 'How were respondents selected?', in_order: 2)
s2_q2.answers.create(answer_title: 'Respondents were selected using a scientific randomization process', answer_score: 1)
s2_q2.answers.create(answer_title: 'Respondents were selected using a modified version of a scientific randomization process', answer_score: 2)
s2_q2.answers.create(answer_title: 'Respondents were selected using partly a scientific randomization process and partly convenience', answer_score: 3)
s2_q2.answers.create(answer_title: 'Respondents were selected randomly in the field by the data collectors', answer_score: 3)
s2_q2.answers.create(answer_title: 'Respondents were selected based on convenience', answer_score: 3)
s2_q2.answers.create(answer_title: 'Respondents were selected because they are part of a specific group (For example, participants in a project, shoppers at a store)', answer_score: 3)
s2_q2.answers.create(answer_title: 'Respondents were self-selected', answer_score: 3)


s2_q3 = section.questions.create(question_title: 'Were selected respondents followed-up with repeatedly until they answered?', in_order: 3)
s2_q3.answers.create(answer_title: 'Yes, definitely', answer_score: 1)
s2_q3.answers.create(answer_title: 'Yes, probably', answer_score: 2)
s2_q3.answers.create(answer_title: 'No', answer_score: 3)
s2_q3.answers.create(answer_title: 'Unsure', answer_score: 99)

s2_q4 = section.questions.create(question_title: 'Were respondents selected based on the data collector’s choices?', in_order: 4)
s2_q4.answers.create(answer_title: 'Yes, definitely', answer_score: 3)
s2_q4.answers.create(answer_title: 'Yes, probably', answer_score: 2)
s2_q4.answers.create(answer_title: 'No', answer_score: 1)
s2_q4.answers.create(answer_title: 'Unsure', answer_score: 99)

s2_q5 = section.questions.create(question_title: 'Were respondents selected based on their external characteristics?', in_order: 5)
s2_q5.answers.create(answer_title: 'Yes', answer_score: 3)
s2_q5.answers.create(answer_title: 'No', answer_score: 1)
s2_q5.answers.create(answer_title: 'Unsure', answer_score: 99)

puts "===========Section 3=================="
section = Section.create(name: 'Who did not answer the questions' , in_order: 3)

s3_q1 = section.questions.create(question_title: 'Does the data include a record of respondents who declined to participate?', in_order: 1)
s3_q1.answers.create(answer_title: 'Yes', answer_score: 1)
s3_q1.answers.create(answer_title: 'No', answer_score: 3)
s3_q1.answers.create(answer_title: 'Unsure', answer_score: 99)


s3_q2 = section.questions.create(question_title: 'What groups of people were intentionally not included?', in_order: 2)
s3_q2.answers.create(answer_title: 'Yes (For example, those living in institutions or those living in jail; or those not home at the time of data collection)', answer_score: 3)
s3_q2.answers.create(answer_title: 'No one was intentionally not included',answer_score: 1)
s3_q2.answers.create(answer_title: 'Unsure', answer_score: 99)

s3_q3 = section.questions.create(question_title: 'What groups of people were accidentally not included?', in_order: 3)
s3_q3.answers.create(answer_title: 'People who were not home or available at the time of data collection were accidentally not included', answer_score: 3)
s3_q3.answers.create(answer_title: 'Other people were accidentally not included', answer_score: 3)
s3_q3.answers.create(answer_title: 'No one was excluded from the survey by accident', answer_score: 1)
s3_q3.answers.create(answer_title: 'Unsure', answer_score: 99)

puts "===========Section 4=================="
section = Section.create(name: 'What questions were asked' , in_order: 4)
s4_q1 = section.questions.create(question_title: 'In what format was the gender question asked?', in_order: 1)
s4_q1.answers.create(answer_title: 'Binary, male/female', answer_score: 3)
s4_q1.answers.create(answer_title: 'Non-binary, several closed-format options', answer_score: 2)
s4_q1.answers.create(answer_title: 'Open ended', answer_score: 1)
s4_q1.answers.create(answer_title: 'Unsure', answer_score: 99)
s4_q1.answers.create(answer_title: 'No gender question asked', answer_score: 99)

s4_q2 = section.questions.create(question_title: 'How was the household status question asked?', in_order: 2)
s4_q2.answers.create(answer_title: 'One question. Closed, on who is the head of the household', answer_score: 3)
s4_q2.answers.create(answer_title: 'One open-ended question', answer_score: 2)
s4_q2.answers.create(answer_title: 'Several questions about household status', answer_score: 1)
s4_q2.answers.create(answer_title: 'Enumerator or other external person decided who was head of household', answer_score: 3)
s4_q2.answers.create(answer_title: 'Unsure', answer_score: 99)
s4_q2.answers.create(answer_title: 'No question about household status', answer_score: 99)

s4_q3 = section.questions.create(question_title: 'How was the marriage/partnership question asked?', in_order: 3)
s4_q3.answers.create(answer_title: 'One question on relationship status, closed ended question.', answer_score: 3)
s4_q3.answers.create(answer_title: 'Several questions on relationship status asked, closed ended.', answer_score: 2)
s4_q3.answers.create(answer_title: 'Open ended question about relationship status asked', answer_score: 1)
s4_q3.answers.create(answer_title: 'Unsure', answer_score: 99)
s4_q3.answers.create(answer_title: 'No relationship status question asked', answer_score: 99)


s4_q4 = section.questions.create(question_title: 'How was the work question asked?', in_order: 4)
s4_q4.answers.create(answer_title: 'One question asked only about primary work', answer_score: 3)
s4_q4.answers.create(answer_title: 'Several questions asked only about primary work', answer_score: 2)
s4_q4.answers.create(answer_title: 'Several questions asked about both primary and secondary work', answer_score: 1)
s4_q4.answers.create(answer_title: 'Unsure', answer_score: 99)
s4_q4.answers.create(answer_title: 'No questions about work asked', answer_score: 99)

s4_q5 = section.questions.create(question_title: 'Were any questions were answered by the enumerator rather than directly by the respondents', in_order: 5)
s4_q5.answers.create(answer_title: 'Yes, one questions was answered by the enumerators only (For example, gender)', answer_score: 2)
s4_q5.answers.create(answer_title: 'Yes, several questions were answered by the enumerators only (For example, the measures of poverty within the house, like floor composition and household possessions)', answer_score: 3)
s4_q5.answers.create(answer_title: 'No questions were answered only by the enumerators', answer_score: 1)
s4_q5.answers.create(answer_title: 'Unsure', answer_score: 99)

s4_q6 = section.questions.create(question_title: 'Do the skip patterns used introduce potential bias?', in_order: 6)
s4_q6.answers.create(answer_title: 'Yes, definitely (For example, if someone replies that their sexual orientation is homosexual, do they get skipped in asking about parenthood.)', answer_score: 3)
s4_q6.answers.create(answer_title: 'Yes, possibly (For example, do people over a certain age get skipped for questions about current employment)', answer_score: 2)
s4_q6.answers.create(answer_title: 'No', answer_score: 1)
s4_q6.answers.create(answer_title: 'Unsure', answer_score: 99)

puts "===========Section 5=================="
section = Section.create(name: 'Where', in_order: 5)

s5_q1 = section.questions.create(question_title: 'Where was the data collected?', in_order: 1)
s5_q1.answers.create(answer_title: 'Public space', answer_score: 2)
s5_q1.answers.create(answer_title: 'Private space', answer_score: 1)
s5_q1.answers.create(answer_title: 'Homes', answer_score: 1)
s5_q1.answers.create(answer_title: 'Government office', answer_score: 3)
s5_q1.answers.create(answer_title: 'Program/service location', answer_score: 3)

s5_q2 = section.questions.create(question_title: 'Who has access to the final data?', in_order: 2)
s5_q2.answers.create(answer_title: 'Only the data collection organization has access to the data', answer_score: 3)
s5_q2.answers.create(answer_title: 'The data collection organization and the data respondents have access to the data', answer_score: 2)
s5_q2.answers.create(answer_title: 'The data collection organization and several other organizations have access to the data', answer_score: 3)
s5_q2.answers.create(answer_title: 'The data collection organization and the data respondents and several other organizations have access to the data', answer_score: 2)
s5_q2.answers.create(answer_title: 'The public has access to the data', answer_score: 1)
s5_q2.answers.create(answer_title: 'Unsure', answer_score: 99)
s5_q2.answers.create(answer_title: 'Other ', answer_score: 99)

s5_q3 = section.questions.create(question_title: 'Is the place where the data was collected a place that raises or diminishes the respondent’s status?', in_order: 3)
s5_q3.answers.create(answer_title: 'Location that raises respondents status (For example, in their home - often raises person’s status', answer_score: 1)
s5_q3.answers.create(answer_title: 'Location that lowers the respondent’s status (For example, a doctor’s office often lowers a person’s status', answer_score: 3)
s5_q3.answers.create(answer_title: 'Combination', answer_score: 2)
s5_q3.answers.create(answer_title: 'Unsure', answer_score: 99)
s5_q3.answers.create(answer_title: 'Data collected online', answer_score: 2)

puts "================Section 6=============="
section = Section.create(name: 'Where', in_order: 6)

s6_q1 = section.questions.create(question_title: 'What tools/technology was used to collect the data', in_order: 1)
s6_q1.answers.create(answer_title: 'Pencil and paper', answer_score: 1)
s6_q1.answers.create(answer_title: 'Tablets', answer_score: 1)
s6_q1.answers.create(answer_title: 'Remotely collected', answer_score: 1)
s6_q1.answers.create(answer_title: 'Combination', answer_score: 1)
s6_q1.answers.create(answer_title: 'Unsure', answer_score: 99)

s6_q2 = section.questions.create(question_title: 'How were the answers coded?
', in_order: 2)
s6_q2.answers.create(answer_title: 'Dataset contains the raw answers', answer_score: 1)
s6_q2.answers.create(answer_title: 'Dataset contains answers that have been coded by others (For example, age has been coded into five broad groups of age cohorts or education has been coded into four broad groups of education levels that are standardized globally)', answer_score: 2)
s6_q2.answers.create(answer_title: 'Unsure', answer_score: 99)


s6_q3 = section.questions.create(question_title: 'What incentivization was offered for data collection?', in_order: 3)
s6_q3.answers.create(answer_title: 'No external incentive was offered to data responders', answer_score: 1)
s6_q3.answers.create(answer_title: 'Data responders were given financial payment (cash or money transfer) for participation', answer_score: 1)
s6_q3.answers.create(answer_title: 'Data responders were given non-financial resources (like cell phone minutes or a gift card) for participation', answer_score: 1)
s6_q3.answers.create(answer_title: 'Data responders were given access to information for participation (For example, access to a paper, or access to a learning session)', answer_score: 2)
s6_q3.answers.create(answer_title: 'Data responders were given access to services for participation (For example, admission to a program)', answer_score: 3)
s6_q3.answers.create(answer_title: 'Other (please list)', answer_score: 99)
s6_q3.answers.create(answer_title: 'Unsure', answer_score: 99)

s6_q4 = section.questions.create(question_title: 'What level of ownership are the data producers being given?', in_order: 4)
s6_q4.answers.create(answer_title: 'Respondents are given full access to the entire dataset', answer_score: 1)
s6_q4.answers.create(answer_title: 'Respondents are given full access to their data but cannot make change', answer_score: 2)
s6_q4.answers.create(answer_title: 'Respondents are given full access to their data 2ith possibility to change or remove it', answer_score: 1)
s6_q4.answers.create(answer_title: 'Respondents are given no access to any part of the data', answer_score: 3)
s6_q4.answers.create(answer_title: 'Other (please enter)', answer_score: 99)
s6_q4.answers.create(answer_title: 'Unsure', answer_score: 99)

s6_q5 = section.questions.create(question_title: 'What type of results are given to the data respondents?', in_order: 5)
s6_q5.answers.create(answer_title: 'Respondents are given their personal results from the survey', answer_score: 1)
s6_q5.answers.create(answer_title: 'Respondents are given their personal results and the overall results from the survey', answer_score: 1)
s6_q5.answers.create(answer_title: 'Respondents are given only the overall results from the survey', answer_score: 2)
s6_q5.answers.create(answer_title: 'Respondents are given no access to data or results', answer_score: 3)

s6_q6 = section.questions.create(question_title: 'Was any part of this data taken from administrative databases?', in_order: 6)
s6_q6.answers.create(answer_title: 'Yes', answer_score: 3)
s6_q6.answers.create(answer_title: 'No', answer_score: 1)
s6_q6.answers.create(answer_title: 'Unsure', answer_score: 99)

puts "================Section 7=============="
section = Section.create(name: 'Why', in_order: 7)

s7_q1 = section.questions.create(question_title: 'What is the primary data collection purpose?', in_order: 1)
s7_q1.answers.create(answer_title: 'Program evaluation', answer_score: 2)
s7_q1.answers.create(answer_title: 'Government services', answer_score: 2)
s7_q1.answers.create(answer_title: 'Eligibility determination for a benefit', answer_score: 3)
s7_q1.answers.create(answer_title: 'Commercial purposes', answer_score: 1)
s7_q1.answers.create(answer_title: 'User experience or service design analysis', answer_score: 1)
s7_q1.answers.create(answer_title: 'Administrative purposes', answer_score: 2)
s7_q1.answers.create(answer_title: 'Academic research purposes', answer_score: 2)

s7_q2 = section.questions.create(question_title: 'What is the secondary data collection purpose?', in_order: 2)
s7_q2.answers.create(answer_title: 'Program evaluation', answer_score: 2)
s7_q2.answers.create(answer_title: 'Government services', answer_score: 2)
s7_q2.answers.create(answer_title: 'Eligibility determination for a benefit', answer_score: 3)
s7_q2.answers.create(answer_title: 'Commercial purposes', answer_score: 1)
s7_q2.answers.create(answer_title: 'User experience or service design analysis', answer_score: 1)
s7_q2.answers.create(answer_title: 'Administrative purposes', answer_score: 2)
s7_q2.answers.create(answer_title: 'Academic research purposes', answer_score: 2)

s7_q3 = section.questions.create(question_title: 'Is there an economic advantage (to data collectors) to the numbers skewing in a particular direction?', in_order: 3)
s7_q3.answers.create(answer_title: 'Yes, strongly', answer_score: 3)
s7_q3.answers.create(answer_title: 'Yes, a small amount', answer_score: 2)
s7_q3.answers.create(answer_title: 'No', answer_score: 1)
s7_q3.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q4 = section.questions.create(question_title: 'Is there an political advantage (to data collectors) to the numbers skewing in a particular direction?', in_order: 4)
s7_q4.answers.create(answer_title: 'Yes, strongly', answer_score: 3)
s7_q4.answers.create(answer_title: 'Yes, a small amount', answer_score: 2)
s7_q4.answers.create(answer_title: 'No', answer_score: 1)
s7_q4.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q5 = section.questions.create(question_title: 'Is there an personal advantage (to data collectors) to the numbers skewing in a particular direction?', in_order: 5)
s7_q5.answers.create(answer_title: 'Yes, strongly', answer_score: 3)
s7_q5.answers.create(answer_title: 'Yes, a small amount', answer_score: 2)
s7_q5.answers.create(answer_title: 'No', answer_score: 1)
s7_q5.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q6 = section.questions.create(question_title: 'Is there an economic advantage (to respondents) to the numbers skewing in a particular direction?', in_order: 6)
s7_q6.answers.create(answer_title: 'Yes, strongly', answer_score: 3)
s7_q6.answers.create(answer_title: 'Yes, a small amount', answer_score: 2)
s7_q6.answers.create(answer_title: 'No', answer_score: 1)
s7_q6.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q7 = section.questions.create(question_title: 'Is there an political advantage (to respondents) to the numbers skewing in a particular direction?', in_order: 7)
s7_q7.answers.create(answer_title: 'Yes, strongly', answer_score: 3)
s7_q7.answers.create(answer_title: 'Yes, a small amount', answer_score: 2)
s7_q7.answers.create(answer_title: 'No', answer_score: 1)
s7_q7.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q8 = section.questions.create(question_title: 'Is there an personal advantage (to respondents) to the numbers skewing in a particular direction?', in_order: 8)
s7_q8.answers.create(answer_title: 'Yes, strongly', answer_score: 3)
s7_q8.answers.create(answer_title: 'Yes, a small amount', answer_score: 2)
s7_q8.answers.create(answer_title: 'No', answer_score: 1)
s7_q8.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q9 = section.questions.create(question_title: 'Is this data collected in connection with eligibility for a benefit?', in_order: 9)
s7_q9.answers.create(answer_title: 'Yes', answer_score: 3)
s7_q9.answers.create(answer_title: 'No', answer_score: 1)
s7_q9.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q10 = section.questions.create(question_title: 'Is this data collected by the government?', in_order: 10)
s7_q10.answers.create(answer_title: 'Yes', answer_score: 2)
s7_q10.answers.create(answer_title: 'No', answer_score: 1)
s7_q10.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q11 = section.questions.create(question_title: 'Is this data collected by an NGO?', in_order: 11)
s7_q11.answers.create(answer_title: 'Yes', answer_score: 2)
s7_q11.answers.create(answer_title: 'No', answer_score: 1)
s7_q11.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q12 = section.questions.create(question_title: 'Is this data collected with a blinding process?', in_order: 12)
s7_q12.answers.create(answer_title: 'Yes', answer_score: 1)
s7_q12.answers.create(answer_title: 'No', answer_score: 3)
s7_q12.answers.create(answer_title: 'Unsure', answer_score: 99)

s7_q13 = section.questions.create(question_title: 'Is this data collected with informed consent?', in_order: 13)
s7_q13.answers.create(answer_title: 'Yes, clearly', answer_score: 1)
s7_q13.answers.create(answer_title: 'Yes, but weakly', answer_score: 2)
s7_q13.answers.create(answer_title: 'No', answer_score: 3)
s7_q13.answers.create(answer_title: 'Unsure', answer_score: 99)

puts "================Section 8=============="
section = Section.create(name: 'Data Post Processing Phase', in_order: 8)

s8_q1 = section.questions.create(question_title: 'Has the data been cleaned', in_order: 1)
s8_q1.answers.create(answer_title: 'Yes', answer_score: 1)
s8_q1.answers.create(answer_title: 'No', answer_score: 1)
s8_q1.answers.create(answer_title: 'Unsure', answer_score: 99)

s8_q2 = section.questions.create(question_title: 'Have anomalies or outliers been accounted for or removed', in_order: 2)
s8_q2.answers.create(answer_title: 'Yes', answer_score: 3)
s8_q2.answers.create(answer_title: 'No', answer_score: 1)
s8_q2.answers.create(answer_title: 'Unsure', answer_score: 99)

s8_q3 = section.questions.create(question_title: 'Has missing data been deleted?', in_order: 3)
s8_q2.answers.create(answer_title: 'Yes, questions with lots of missing data were deleted', answer_score: 3)
s8_q2.answers.create(answer_title: 'Yes, any respondent without totally complete data was deleted', answer_score: 3)
s8_q2.answers.create(answer_title: 'No', answer_score: 1)
s8_q2.answers.create(answer_title: 'Unsure', answer_score: 99)