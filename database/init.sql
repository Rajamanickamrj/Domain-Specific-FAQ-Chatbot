CREATE DATABASE chatbot;

USE chatbot;

CREATE TABLE faqs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    answer TEXT NOT NULL
);

-- Add initial FAQ data
INSERT INTO faqs (question, answer) VALUES
('What are the visiting hours?', 'Visiting hours are from 8 AM to 8 PM.'),
('How can I book an appointment?', 'You can book an appointment through our website or by calling us.'),
('What are the available departments?', 'We have Cardiology, Neurology, Pediatrics, and more.'),
('Is parking available?', 'Yes, we have free parking for all visitors.');


INSERT INTO chatbot.faqs (question, answer) VALUES
('What is primary healthcare?', 'Primary healthcare refers to essential health services accessible to individuals and families, focusing on prevention, wellness, and the treatment of common illnesses.'),
('How often should I have a health check-up?', 'It is recommended to have an annual health check-up, but the frequency may vary based on age, existing conditions, and medical advice.'),
('When should my child have their first pediatric visit?', 'Your child should visit a pediatrician within the first week after birth and then as per the pediatrician’s advice.'),
('What vaccinations does my child need?', 'Vaccinations are scheduled according to national immunization guidelines. Consult your pediatrician for a detailed schedule.'),
('How often should I get a Pap smear?', 'A Pap smear is recommended every 3 years for women aged 21-65, but the frequency may change based on your doctor\'s recommendations.'),
('What are common symptoms of menopause?', 'Symptoms include hot flashes, irregular periods, mood swings, and sleep disturbances. Speak to a healthcare provider for personalized advice.'),
('What are the signs of depression?', 'Signs of depression include persistent sadness, loss of interest, fatigue, changes in sleep or appetite, and difficulty concentrating.'),
('How can I manage stress effectively?', 'Effective stress management includes regular exercise, meditation, adequate sleep, and seeking professional help when necessary.'),
('What are the warning signs of a heart attack?', 'Warning signs include chest pain, shortness of breath, nausea, and pain radiating to the arm or jaw. Seek immediate medical attention.'),
('How can I lower my cholesterol?', 'Lower cholesterol by adopting a healthy diet, exercising regularly, avoiding smoking, and following your doctor\'s advice.'),
('What causes acne?', 'Acne is caused by a combination of excess oil production, clogged pores, bacteria, and hormonal changes.'),
('How can I protect my skin from the sun?', 'Use sunscreen with SPF 30 or higher, wear protective clothing, and avoid direct sunlight during peak hours.'),
('What is osteoporosis?', 'Osteoporosis is a condition where bones become weak and brittle, increasing the risk of fractures.'),
('How can I prevent joint pain?', 'Prevent joint pain through regular exercise, maintaining a healthy weight, and avoiding repetitive strain on joints.'),
('What is a balanced diet?', 'A balanced diet includes a variety of foods from all food groups: fruits, vegetables, grains, protein, and dairy.'),
('How much water should I drink daily?', 'The recommended daily water intake is about 2-3 liters for adults, but individual needs vary based on activity and climate.');

INSERT INTO chatbot.faqs (question, answer) VALUES
('What is primary healthcare?', 'Primary healthcare refers to essential health services accessible to individuals and families, focusing on prevention, wellness, and the treatment of common illnesses.'),
('How often should I have a health check-up?', 'It is recommended to have an annual health check-up, but the frequency may vary based on age, existing conditions, and medical advice.'),
('When should my child have their first pediatric visit?', 'Your child should visit a pediatrician within the first week after birth and then as per the pediatrician’s advice.'),
('What vaccinations does my child need?', 'Vaccinations are scheduled according to national immunization guidelines. Consult your pediatrician for a detailed schedule.'),
('How often should I get a Pap smear?', 'A Pap smear is recommended every 3 years for women aged 21-65, but the frequency may change based on your doctor\'s recommendations.'),
('What are common symptoms of menopause?', 'Symptoms include hot flashes, irregular periods, mood swings, and sleep disturbances. Speak to a healthcare provider for personalized advice.'),
('What are the signs of depression?', 'Signs of depression include persistent sadness, loss of interest, fatigue, changes in sleep or appetite, and difficulty concentrating.'),
('How can I manage stress effectively?', 'Effective stress management includes regular exercise, meditation, adequate sleep, and seeking professional help when necessary.'),
('What are the warning signs of a heart attack?', 'Warning signs include chest pain, shortness of breath, nausea, and pain radiating to the arm or jaw. Seek immediate medical attention.'),
('How can I lower my cholesterol?', 'Lower cholesterol by adopting a healthy diet, exercising regularly, avoiding smoking, and following your doctor\'s advice.'),
('What causes acne?', 'Acne is caused by a combination of excess oil production, clogged pores, bacteria, and hormonal changes.'),
('How can I protect my skin from the sun?', 'Use sunscreen with SPF 30 or higher, wear protective clothing, and avoid direct sunlight during peak hours.'),
('What is osteoporosis?', 'Osteoporosis is a condition where bones become weak and brittle, increasing the risk of fractures.'),
('How can I prevent joint pain?', 'Prevent joint pain through regular exercise, maintaining a healthy weight, and avoiding repetitive strain on joints.'),
('What is a balanced diet?', 'A balanced diet includes a variety of foods from all food groups: fruits, vegetables, grains, protein, and dairy.'),
('How much water should I drink daily?', 'The recommended daily water intake is about 2-3 liters for adults, but individual needs vary based on activity and climate.');

INSERT INTO chatbot.faqs (question, answer) VALUES
('How can I find the right doctor for my condition?', 'You can find the right doctor by researching their specialization, reading patient reviews, and consulting your primary care physician for recommendations.'),
('What is the role of a primary care physician?', 'A primary care physician provides general healthcare, manages chronic conditions, and refers you to specialists when needed.'),
('When should I see a specialist?', 'You should see a specialist if your condition requires expert evaluation or treatment beyond what a primary care doctor can provide.'),
('What information should I bring to a doctor\'s appointment?', 'Bring your medical history, a list of current medications, any recent test results, and a list of questions or symptoms.'),
('What questions should I ask my doctor during a visit?', 'Ask about your diagnosis, treatment options, side effects, and follow-up care. Also, discuss lifestyle changes that may improve your condition.'),
('How can I prepare for a telemedicine appointment?', 'Ensure a stable internet connection, a quiet environment, and have your medical records and questions ready.'),
('What is the difference between an MD and a DO?', 'MDs (Medical Doctors) and DOs (Doctors of Osteopathic Medicine) are both licensed physicians, but DOs often emphasize a holistic approach and osteopathic manipulative treatment.'),
('How often should I visit my doctor?', 'Visit your doctor annually for a check-up or as advised based on your age, medical history, and current health condition.'),
('What does a specialist in internal medicine treat?', 'Internal medicine specialists, or internists, treat a wide range of adult illnesses, focusing on prevention, diagnosis, and treatment of chronic diseases.'),
('When should I get a second opinion from another doctor?', 'Consider a second opinion if you are unsure about a diagnosis, facing a major medical decision, or if treatments are not effective.'),
('What does a pediatrician do?', 'A pediatrician specializes in the physical, emotional, and social health of children from birth to young adulthood.'),
('What does a cardiologist treat?', 'A cardiologist specializes in diagnosing and treating heart and blood vessel conditions, including heart attacks, arrhythmias, and high blood pressure.'),
('What does an endocrinologist treat?', 'An endocrinologist treats hormonal disorders such as diabetes, thyroid conditions, and hormonal imbalances.'),
('What does an orthopedic doctor treat?', 'An orthopedic doctor specializes in the treatment of bones, joints, ligaments, tendons, and muscles.'),
('What is the role of a dermatologist?', 'A dermatologist specializes in diagnosing and treating skin, hair, and nail conditions.'),
('What does an oncologist do?', 'An oncologist specializes in diagnosing and treating various types of cancer.'),
('What does a neurologist treat?', 'A neurologist treats disorders of the nervous system, including migraines, epilepsy, multiple sclerosis, and Parkinson’s disease.'),
('What is a psychiatrist?', 'A psychiatrist is a medical doctor who specializes in diagnosing, treating, and preventing mental health disorders.'),
('How do I know if I need a physical therapist?', 'You may need a physical therapist if you have pain, limited mobility, or are recovering from surgery or an injury.'),
('What does a gynecologist treat?', 'A gynecologist specializes in women’s reproductive health, including menstrual issues, contraception, pregnancy, and menopause.'),
('What is the role of a radiologist?', 'A radiologist interprets medical imaging, such as X-rays, CT scans, and MRIs, to assist in diagnosis and treatment.'),
('What does a gastroenterologist treat?', 'A gastroenterologist treats disorders of the digestive system, including the stomach, intestines, liver, and pancreas.'),
('What is the role of an anesthesiologist?', 'An anesthesiologist administers anesthesia during surgeries and monitors vital signs to ensure patient safety.'),
('What does a urologist treat?', 'A urologist treats conditions of the urinary tract and male reproductive organs, such as kidney stones, bladder issues, and prostate problems.'),
('What does an ophthalmologist do?', 'An ophthalmologist diagnoses and treats eye conditions, performs eye surgeries, and prescribes glasses or contact lenses.'),
('What is a nephrologist?', 'A nephrologist specializes in diagnosing and treating kidney-related conditions, such as chronic kidney disease and kidney stones.'),
('What does an ENT doctor treat?', 'An ENT doctor, or otolaryngologist, treats conditions related to the ear, nose, and throat, including hearing loss and sinusitis.'),
('How do I choose a good hospital or clinic?', 'Look for factors like the hospital\'s reputation, specialization, patient reviews, and proximity to your location.'),
('What is the difference between a surgeon and a physician?', 'A surgeon specializes in performing surgeries, while a physician focuses on diagnosing and treating conditions without surgical procedures.');

INSERT INTO chatbot.faqs (question, answer) VALUES
-- Billing Related
('How can I pay my medical bill?', 'You can pay your medical bill through cash, credit/debit card, net banking, or mobile wallets. Some hospitals also offer EMI options.'),
('Do you provide itemized bills?', 'Yes, itemized bills are provided upon request, detailing all services and charges.'),
('Are medical insurance claims accepted?', 'Yes, we accept most insurance providers. Please check with our billing desk for the list of accepted providers.'),
('What is the refund policy for canceled services?', 'Refunds are processed according to hospital policies. Please contact the billing department for assistance.'),
('Can I get a duplicate copy of my bill?', 'Yes, you can request a duplicate bill from the billing department by providing valid ID proof and details of your original bill.'),

-- Appointment Related
('How can I book an appointment?', 'Appointments can be booked online, through our mobile app, or by calling our reception desk.'),
('Can I reschedule my appointment?', 'Yes, appointments can be rescheduled online or by contacting the reception. Please notify us at least 24 hours in advance.'),
('Do I need a referral to book a specialist appointment?', 'In most cases, a referral is not required. However, some insurance providers may need one for coverage.'),
('What is the consultation fee for appointments?', 'Consultation fees vary by doctor and specialization. Please check with our reception for specific charges.'),
('How can I check my appointment status?', 'You can check your appointment status through our app, website, or by contacting the reception desk.'),

-- Timing Related
('What are the hospital\'s operating hours?', 'Our hospital operates 24/7 for emergency services. Regular outpatient services are available from 8:00 AM to 8:00 PM.'),
('When is the best time to visit the hospital?', 'It is recommended to visit during regular outpatient hours (8:00 AM to 8:00 PM) for non-emergency services.'),
('Do doctors have specific visiting hours?', 'Yes, each doctor has specific visiting hours. Please check our website or contact reception for their schedules.'),
('Is the pharmacy open 24/7?', 'Yes, our in-house pharmacy operates round the clock for your convenience.'),
('Are lab services available on weekends?', 'Yes, lab services are available every day, including weekends and holidays, during outpatient hours.'),

-- Scan Related
('How do I book a scan or diagnostic test?', 'Scans and diagnostic tests can be booked online, through our app, or by visiting the diagnostics desk at the hospital.'),
('Do I need a doctor\'s prescription for a scan?', 'Yes, most scans require a doctor\'s prescription. Please bring it with you during your visit.'),
('How long does it take to get scan results?', 'Scan results are typically available within 24-48 hours. Urgent cases can be expedited.'),
('Are scan reports available online?', 'Yes, scan reports can be accessed through our patient portal or mobile app.'),
('What types of scans are available?', 'We offer MRI, CT, X-ray, ultrasound, and other advanced diagnostic imaging services.'),

-- Admin Related
('How do I request my medical records?', 'You can request your medical records by filling out a form at the medical records department. ID proof is required.'),
('Can I update my personal details in the hospital records?', 'Yes, you can update your details by visiting the reception or admin office with valid ID proof.'),
('How do I get a discharge summary?', 'The discharge summary is provided at the time of discharge. For a duplicate copy, please contact the admin office.'),
('Do you provide medical certificates?', 'Yes, medical certificates are provided upon request after consultation with a doctor.'),
('What is the process for admitting a patient?', 'For admission, please visit the reception desk with the doctor\'s prescription, ID proof, and insurance details (if applicable).'),

-- Complaint Related
('How can I file a complaint about hospital services?', 'You can file a complaint by visiting the admin office, filling out a feedback form, or emailing us at our customer service address.'),
('What is the process for addressing complaints?', 'Complaints are reviewed by the admin team and responded to within 48 hours. Urgent issues are prioritized.'),
('Who do I contact for billing disputes?', 'For billing disputes, please contact the billing department directly for clarification and resolution.'),
('How can I provide feedback about my experience?', 'Feedback can be submitted through our online portal, mobile app, or feedback forms available at the reception.'),
('What should I do if my complaint is not resolved?', 'If your complaint is not resolved, please escalate it to the hospital administrator or contact customer support directly.');
