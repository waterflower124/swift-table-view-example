//
//  Global.swift
//  DiseaseScale
//
//  Created by WaterFlower124 on 8/12/18.
//  Copyright © 2018 WaterFlower125. All rights reserved.
//

import Foundation
class Global {
    
    var disease_array = ["Pakinson", "Spasmodic Torticollis", "Ataxia", "Huntington"];
    
    static var items_pakinson = ["SPEECH", "FACIAL EXPRESSION", "RIGIDITY(Neck)", "RIGIDITY(RUE)", "RIGIDITY(LUE)", "RIGIDITY(RLE)", "RIGIDITY(LLE)", "FINGER TAPPING(Left)", "FINGER TAPPING(Right)", "HAND MOVEMENTS(Left)", "HAND MOVEMENTS(Right)", "PRONATION-SUPINATION MOVEMENTS OF HANDS(Left)", "PRONATION-SUPINATION MOVEMENTS OF HANDS(Right)", "TOE TAPPING(Left)", "TOE TAPPING(Right)", "LEG AGILITY(Left)", "LEG AGILITY(Right)", "ARISING FROM CHAIR", "GAIT", "FREEZING OF GAIT", "POSTURAL STABILITY", "POSTURE", "GLOBAL SPONTANEITY OF MOVEMENT (BODY BRADYKINESIA)", "POSTURAL TREMOR OF THE HANDS(Left)", "POSTURAL TREMOR OF THE HANDS(Right)", "KINETIC TREMOR OF THE HANDS(Left)", "KINETIC TREMOR OF THE HANDS(Right)", "REST TREMOR AMPLITUDE(RUE)", "REST TREMOR AMPLITUDE(LUE)", "REST TREMOR AMPLITUDE(RLE)", "REST TREMOR AMPLITUDE(LLE)", "REST TREMOR AMPLITUDE(Lip/jaw)", "CONSTANCY OF REST TREMOR"];
    
    static var itemOptions_pakinson = [["Normal", "Slight", "Mild", "Moderate", "Severe"]];
    static var itemOptionsDesc_pakinson = [["No speech problems", "Loss of modulation, diction or volume, but still all words easy to understand", "Loss of modulation, diction, or volume, with a few words unclear, but the overall sentences easy to follow", "Speech is difficult to understand to the point that some, but not most, sentences are poorly understood", "Most speech is difficult to understand or unintelligible"],
                                      ["Normal facial expression", "Minimal masked facies manifested only by decreased frequency of blinking", "In addition to decreased eye-blink frequency, Masked facies present in the lower face as well, namely fewer movements around the mouth, such as less spontaneous smiling, but lips not parted", "Masked facies with lips parted some of the time when the mouth is at rest", "Masked facies with lips parted most of the time when the mouth is at rest"],
                                      ["No rigidity", "Rigidity only detected with activation maneuver", "Rigidity detected without the activation maneuver, but full range of motion is easily achieved", "Rigidity detected without the activation maneuver; full range of motion is achieved with effort", "Rigidity detected without the activation maneuver and full range of motion not achieved"],
                                      ["No rigidity", "Rigidity only detected with activation maneuver", "Rigidity detected without the activation maneuver, but full range of motion is easily achieved", "Rigidity detected without the activation maneuver; full range of motion is achieved with effort", "Rigidity detected without the activation maneuver and full range of motion not achieved"],
                                      ["No rigidity", "Rigidity only detected with activation maneuver", "Rigidity detected without the activation maneuver, but full range of motion is easily achieved", "Rigidity detected without the activation maneuver; full range of motion is achieved with effort", "Rigidity detected without the activation maneuver and full range of motion not achieved"],
                                      ["No rigidity", "Rigidity only detected with activation maneuver", "Rigidity detected without the activation maneuver, but full range of motion is easily achieved", "Rigidity detected without the activation maneuver; full range of motion is achieved with effort", "Rigidity detected without the activation maneuver and full range of motion not achieved"],
                                      ["No rigidity", "Rigidity only detected with activation maneuver", "Rigidity detected without the activation maneuver, but full range of motion is easily achieved", "Rigidity detected without the activation maneuver; full range of motion is achieved with effort", "Rigidity detected without the activation maneuver and full range of motion not achieved"],
                                      ["No problems", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the tapping movement; b) slight slowing; c) the amplitude decrements near the end of the 10 taps", "Any of the following: a) 3 to 5 interruptions during tapping; b) mild slowing; c) the amplitude decrements midway in the 10-tap sequence", "Any of the following: a) more than 5 interruptions during tapping or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st tap", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problems", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the tapping movement; b) slight slowing; c) the amplitude decrements near the end of the 10 taps", "Any of the following: a) 3 to 5 interruptions during tapping; b) mild slowing; c) the amplitude decrements midway in the 10-tap sequence", "Any of the following: a) more than 5 interruptions during tapping or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st tap", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problems", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the tapping movement; b) slight slowing; c) the amplitude decrements near the end of the 10 taps", "Any of the following: a) 3 to 5 interruptions during tapping; b) mild slowing; c) the amplitude decrements midway in the 10-tap sequence", "Any of the following: a) more than 5 interruptions during tapping or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st tap", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problems", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the tapping movement; b) slight slowing; c) the amplitude decrements near the end of the 10 taps", "Any of the following: a) 3 to 5 interruptions during tapping; b) mild slowing; c) the amplitude decrements midway in the 10-tap sequence", "Any of the following: a) more than 5 interruptions during tapping or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st tap", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problems", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the tapping movement; b) slight slowing; c) the amplitude decrements near the end of the 10 taps", "Any of the following: a) 3 to 5 interruptions during tapping; b) mild slowing; c) the amplitude decrements midway in the 10-tap sequence", "Any of the following: a) more than 5 interruptions during tapping or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st tap", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problems", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the tapping movement; b) slight slowing; c) the amplitude decrements near the end of the 10 taps", "Any of the following: a) 3 to 5 interruptions during tapping; b) mild slowing; c) the amplitude decrements midway in the 10-tap sequence", "Any of the following: a) more than 5 interruptions during tapping or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st tap", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problem", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the movement; b) slight slowing; c) the amplitude decrements near the end of the task", "Any of the following: a) 3 to 5 interruptions during the movements; b) mild slowing; c) the amplitude decrements midway in the task", "Any of the following: a) more than 5 interruptions during the movement or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st open-and-close sequence", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problem", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the movement; b) slight slowing; c) the amplitude decrements near the end of the task", "Any of the following: a) 3 to 5 interruptions during the movements; b) mild slowing; c) the amplitude decrements midway in the task", "Any of the following: a) more than 5 interruptions during the movement or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st open-and-close sequence", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problem", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the movement; b) slight slowing; c) the amplitude decrements near the end of the task", "Any of the following: a) 3 to 5 interruptions during the movements; b) mild slowing; c) the amplitude decrements midway in the task", "Any of the following: a) more than 5 interruptions during the movement or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st open-and-close sequence", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problem", "Any of the following: a) the regular rhythm is broken with one or two interruptions or hesitations of the movement; b) slight slowing; c) the amplitude decrements near the end of the task", "Any of the following: a) 3 to 5 interruptions during the movements; b) mild slowing; c) the amplitude decrements midway in the task", "Any of the following: a) more than 5 interruptions during the movement or at least one longer arrest (freeze) in ongoing movement; b) moderate slowing; c) the amplitude decrements starting after the 1st open-and-close sequence", "Cannot or can only barely perform the task because of slowing, interruptions or decrements"],
                                      ["No problems. Able to arise quickly without hesitation", "Arising is slower than normal; or may need more than one attempt; or may need to move forward in the chair to arise. No need to use the arms of the chair", "Pushes self up from arms of chair without difficulty", "Needs to push off, but tends to fall back; or may have to try more than one time using arms of chair, but can get up without help", "Unable to arise without help"],
                                      ["No problems", "Independent walking with minor gait impairment", "Independent walking but with substantial gait impairment", "Requires an assistance device for safe walking (walking stick, walker) but not a person", "Cannot walk at all or only with another person’s assistance"],
                                      ["No freezing", "Freezes on starting, turning or walking through doorway with a single halt during any of these events, but then continues smoothly without freezing during straight walking", "Freezes on starting, turning or walking through doorway with more than one halt during any of these activities, but continues smoothly without freezing during straight walking", "Freezes once during straight walking", "Freezes multiple times during straight walking"],
                                      ["No problems: Recovers with one or two steps", "3-5 steps, but subject recovers unaided", "More than 5 steps, but subject recovers unaided", "Stands safely, but with absence of postural response; falls if not caught by examiner", "Very unstable, tends to lose balance spontaneously or with just a gentle pull on the shoulders"],
                                      ["No problems", "Not quite erect, but posture could be normal for older person", "Definite flexion, scoliosis or leaning to one side, but patient can correct posture to normal posture when asked to do so", "Stooped posture, scoliosis or leaning to one side that cannot be corrected volitionally to a normal posture by the patient", "Flexion, scoliosis or leaning with extreme abnormality of posture"],
                                      ["No problems", "Slight global slowness and poverty of spontaneous movements", "Mild global slowness and poverty of spontaneous movements", "Moderate global slowness and poverty of spontaneous movements", "Severe global slowness and poverty of spontaneous movements"],
                                      ["No tremor", "Tremor is present but less than 1 cm in amplitude", "Tremor is at least 1 but less than 3 cm in amplitude", "Tremor is at least 3 but less than 10 cm in amplitude", "Tremor is at least 10 cm in amplitude"],
                                      ["No tremor", "Tremor is present but less than 1 cm in amplitude", "Tremor is at least 1 but less than 3 cm in amplitude", "Tremor is at least 3 but less than 10 cm in amplitude", "Tremor is at least 10 cm in amplitude"],
                                      ["No tremor", "Tremor is present but less than 1 cm in amplitude", "Tremor is at least 1 but less than 3 cm in amplitude", "Tremor is at least 3 but less than 10 cm in amplitude", "Tremor is at least 10 cm in amplitude"],
                                      ["No tremor", "Tremor is present but less than 1 cm in amplitude", "Tremor is at least 1 but less than 3 cm in amplitude", "Tremor is at least 3 but less than 10 cm in amplitude", "Tremor is at least 10 cm in amplitude"],
                                      ["No tremor", "≤ 1 cm in maximal amplitude", "> 1 cm but < 3 cm in maximal amplitude", "3 - 10 cm in maximal amplitude", "> 10 cm in maximal amplitude"],
                                      ["No tremor", "≤ 1 cm in maximal amplitude", "> 1 cm but < 3 cm in maximal amplitude", "3 - 10 cm in maximal amplitude", "> 10 cm in maximal amplitude"],
                                      ["No tremor", "≤ 1 cm in maximal amplitude", "> 1 cm but < 3 cm in maximal amplitude", "3 - 10 cm in maximal amplitude", "> 10 cm in maximal amplitude"],
                                      ["No tremor", "≤ 1 cm in maximal amplitude", "> 1 cm but < 3 cm in maximal amplitude", "3 - 10 cm in maximal amplitude", "> 10 cm in maximal amplitude"],
                                      ["No tremor", "≤ 1 cm in maximal amplitude", "> 1 cm but < 3 cm in maximal amplitude", "3 - 10 cm in maximal amplitude", "> 10 cm in maximal amplitude"],
                                      ["No tremor", "Tremor at rest is present ≤ 25% of the entire examination period", "Tremor at rest is present 26-50% of the entire examination period", "Tremor at rest is present 51-75% of the entire examination period", "Tremor at rest is present > 75% of the entire examination period"]
    ];
    static var itemOptionsBothside_pakinson = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];
    
    
    static var items_ataxia = ["Gait", "Stance", "Sitting", "Speech disturbance", "Finger chase", "Nose-finger test", "Fast alternating hand movements", "Heel-shin slide"];
    static var itemOptions_ataxia = [["Normal", "Slight difficulties", "Clearly abnormal", "Considerable staggering", "Marked staggering", "Severe staggering", "Walking > 10 m", "Walking < 10 m", "Unable to walk"],
                                     ["Normal", "Able to stand", "Able to stand", "Able to stand", "Able to stand", "Unable to stand"],
                                     ["Normal", "Slight difficulties", "Constant sway", "Able to sit for > 10 s", "Unable to sit for >10 s"],
                                     ["Normal", "Suggestion of speech disturbance", "Impaired speech, but easy to understand", "Occasional words difficult to understand", "Many words difficult to understand", "Only single words understandable", "Speech unintelligible / anarthria"],
                                     ["No dysmetria", "Dysmetria < 5 cm", "Dysmetria < 15 cm", "Dysmetria > 15 cm", "Unable to perform 5 pointing movements"],
                                     ["No tremor" ,"Tremor < 2 cm" ,"Tremor < 5 cm" ,"Tremor > 5 cm" ,"Unable to perform"],
                                     ["Normal" ,"Slightly irregular" ,"Clearly irregular" ,"Very irregular" ,"Unable to complete 10 cycles"],
                                     ["Normal" ,"Slightly abnormal" ,"Clearly abnormal" ,"Severely abnormal" ,"Unable to perform the task"]
    ];
    static var itemOptionsDesc_ataxia = [["Normal, no difficulties in walking, turning and walking tandem (up to one misstep allowed)", "Slight difficulties, only visible when walking 10 consecutive steps in tandem", "Clearly abnormal, tandem walking >10 steps not possible", "Considerable staggering, difficulties in half-turn, but without support", "Marked staggering, intermittent support of the wall required", "Severe staggering, permanent support of one stick or light support by one arm required", "Walking > 10 m only with strong support (two special sticks or stroller or accompanying person)", "Walking < 10 m only with strong support (two special sticks or stroller or accompanying person)", "Unable to walk, even supported"],
                                         ["Normal, able to stand in tandem for > 10 s", "Able to stand with feet together without sway, but not in tandem for > 10s", "Able to stand with feet together for > 10 s, but only with sway", "Able to stand for > 10 s without support in natural position, but not with feet together", "Able to stand for >10 s in natural position only with intermittent support", "Able to stand >10 s in natural position only with constant support of one arm", "Unable to stand for >10 s even with constant support of one arm"],
                                         ["Normal, no difficulties sitting >10 sec", "Slight difficulties, intermittent sway", "Constant sway, but able to sit > 10 s without support", "Able to sit for > 10 s only with intermittent support", "Unable to sit for >10 s without continuous support"],
                                         ["Normal", "Suggestion of speech disturbance", "Impaired speech, but easy to understand", "Occasional words difficult to understand", "Many words difficult to understand", "Only single words understandable", "Speech unintelligible / anarthria"],
                                         ["No dysmetria", "Dysmetria, under/ overshooting target <5 cm", "Dysmetria, under/ overshooting target < 15 cm", "Dysmetria, under/ overshooting target > 15 cm", "Unable to perform 5 pointing movements"],
                                         ["No tremor", "Tremor with an amplitude < 2 cm", "Tremor with an amplitude < 5 cm", "Tremor with an amplitude > 5 cm", "Unable to perform 5 pointing movements"],
                                         ["Normal, no irregularities (performs <10s)", "Slightly irregular (performs <10s)", "Clearly irregular, single movements difficult to distinguish or relevant interruptions, but performs <10s", "Very irregular, single movements difficult to distinguish or relevant interruptions, performs >10s", "Unable to complete 10 cycles"],
                                         ["Normal", "Slightly abnormal, contact to shin maintained", "Clearly abnormal, goes off shin up to 3 times during 3 cycles", "Severely abnormal, goes off shin 4 or more times during 3 cycles", "Unable to perform the task"],
    ];
    static var itemOptionsBothside_ataxia = [false, false, false, false, true, true, true, true];
    
    
    static var items_huntington = ["OCULAR PURSUIT(Horizontal)", "OCULAR PURSUIT(Vertical)", "SACCADE INITIATION(Horizontal)", "SACCADE INITIATION(Vertical)", "SACCADE VELOCITY(Horizontal)", "SACCADE VELOCITY(Vertical)", "DY SARTHRIA", "TONGUE PROTRUSION", "MAXIMAL DYSTONIA(Trunk)", "MAXIMAL DYSTONIA(Extremities)", "MAXIMAL CHOREA(Face)", "MAXIMAL CHOREA(Mouth)", "MAXIMAL CHOREA(Trunk)", "MAXIMAL CHOREA(Extremities)", "RETROPULSION PULL TEST", "FINGER TAPS(Left)", "FINGER TAPS(Right)", "PRONATE/SUPINATE-HANDS(Left)", "PRONATE/SUPINATE-HANDS(Right)", "LURIA", "RIGIDITY-ARMS(Left)", "RIGIDITY-ARMS(Right)", "BRADY KINESIA-BODY", "GAIT", "TANDEM WALKING"];
    static var itemOptions_huntington = [["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
                                         ["Normal", "Slight", "Mild", "Moderate", "Severe"],
    ];
    static var itemOptionsDesc_huntington = [["complete (normal)", "jerky movement", "interrupted pursuits/full range", "incomplete range", "cannot pursue"],
                                         ["complete (normal)", "jerky movement", "interrupted pursuits/full range", "incomplete range", "cannot pursue"],
                                         ["normal", "increased latency only", "suppressable blinks or head movements to initiate", "unsuppressable head movements", "cannot initiate saccades"],
                                         ["normal", "increased latency only", "suppressable blinks or head movements to initiate", "unsuppressable head movements", "cannot initiate saccades"],
                                         ["normal", "mild slowing", "moderate slowing", "severely slow, full range", "incomplete range"],
                                         ["normal", "mild slowing", "moderate slowing", "severely slow, full range", "incomplete range"],
                                         ["normal", "unclear, no need to repeat", "must repeat to be understood", "mostly incomprehensible", "mute"],
                                         ["can hold tongue fully protruded for 10 seconds", "cannot keep fully protruded for 10 seconds", "cannot keep fully protruded for 5 seconds", "cannot fully protrude tongue", "cannot protrude tongue beyond lips"],
                                         ["absent", "slighthntermittent", "mild/common or moderatehntermittent", "moderaelcommon", "marked/prolonged"],
                                         ["absent", "slighthntermittent", "mild/common or moderatehntermittent", "moderaelcommon", "marked/prolonged"],
                                         ["absent", "slighthntermittent", "mild/common or moderatehntermittent", "moderaelcommon", "marked/prolonged"],
                                         ["absent", "slighthntermittent", "mild/common or moderatehntermittent", "moderaelcommon", "marked/prolonged"],
                                         ["absent", "slighthntermittent", "mild/common or moderatehntermittent", "moderaelcommon", "marked/prolonged"],
                                         ["absent", "slighthntermittent", "mild/common or moderatehntermittent", "moderaelcommon", "marked/prolonged"],
                                         ["normal", "recovers spontaneously", "would fall if not caught", "tends to fall spontaneously", "cannot stand"],
                                         ["normal (>=15 sec.)", "mild slowing and or reduction in amplitude (11-14/5 sec.)", "Moderately impaired. Definite and early fatiguing. May have occasional arrests in movement (7-10/5 sec.)", "Severely impaired. Frequent hesitation in initiating movements or arrests in ongoing movements ( 3-6/5 sec.)", "Can barely perform the task (0-2/5 sec.)"],
                                         ["normal (>=15 sec.)", "mild slowing and or reduction in amplitude (11-14/5 sec.)", "Moderately impaired. Definite and early fatiguing. May have occasional arrests in movement (7-10/5 sec.)", "Severely impaired. Frequent hesitation in initiating movements or arrests in ongoing movements ( 3-6/5 sec.)", "Can barely perform the task (0-2/5 sec.)"],
                                         ["normal", "mild slowing and/or irregular", "moderate slowing and irregular", "severe slowing and irregular", "cannot perform"],
                                         ["normal", "mild slowing and/or irregular", "moderate slowing and irregular", "severe slowing and irregular", "cannot perform"],
                                         [">= 4 in 10 seconds, no cue", "<4 in 10 seconds, no cue", ">= 4 in 10 seconds, with cues", "<4 in 10 seconds with cues", "cannot perform"],
                                         ["absent", "slight or present only with activation", "mild to moderate", "severe, full range of motion", "severe with limited range"],
                                         ["absent", "slight or present only with activation", "mild to moderate", "severe, full range of motion", "severe with limited range"],
                                         ["normal", "minimally slow", "mildly but clearly slow", "moderately slow, some hesitation", "markedly slow, long delays in initiation"],
                                         ["normal gait, narrow base", "wide base and/or slow", "wide base and walks with difficulty", "walks only with assistance", "cannot attempt"],
                                         ["normal for 10 steps", "1 to 3 deviations from straight line", ">3 deviations", "cannot complete", "cannot attempt"]
    ];
    
    static var itemOptionsBothside_huntingtone = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false];
    
    
    static var items_excursion = ["Rotation", "Laterocollis", "Anterocollis", "Retrocollis", "Lateral shift", "Sagittal shift"];
    static var itemsOptions_excursion = [["", "", "", "", ""],
                                         ["", "", "", ""],
                                         ["", "", "", ""],
                                         ["", "", "", ""],
                                         ["", ""],
                                         ["", ""]
    ];
    static var itemOptionsDesc_excursion = [["0", "1", "2", "3", "4"],
                                            ["0", "1", "2", "3"],
                                            ["0", "1", "2", "3"],
                                            ["0", "1", "2", "3"],
                                            ["0", "1"],
                                            ["0", "1"]
    ];
    static var itemOptionsBothside_excursion = [false, false, false, false, false, false];
}
