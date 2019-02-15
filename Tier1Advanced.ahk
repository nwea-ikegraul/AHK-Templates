;
; Language: English
; Platform: Win9x/NT
; Author:   Ashley Sanders <ashley.sanders@nwea.org>
;
; Script Function:
; Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Custom Scripts



; PARENT CASES (Updated 11/2/2018)
::#interventionist::2081972
::#noresources::2085015
::#novalidreport::2079328
::#stuckinprogress::2084299
::#readyforcards::2076387

; HOT STRINGS
::acct::account

::accts::accounts

::acctm::account manager

::admin::administrator

::adv::advised

::asg::Achievement Status and Growth Report

::acoord::assessment coordinator

::cpaac:: CPAA coordinator

::crf::Class Roster File

::dac::District Assessment Coordinator

::dadmin::data administrator

::drr::data repair request

::hira::high level of rapid guessing

::iep:: individual education program

::impro::Import Profiles

::ldb::Lockdown Browser

::lmi::LMI session -

::mancs::Manage Custom Groups

::mandp::Manage Data Partners

::manst::Manage Students

::mants::Manage Test Sessions

::manus::Manage Users

::maplink::https://teach.mapnwea.org/

::mgro::MAP Growth

::modpref::Modify Preferences

::mrf::MAP Reading Fluency

::msk::MAP Skills

::nwealink::http://www.nwea.org/

::overup::Advised reports will take an overnight update

::pa::partner

::recerr::reconcilable errors

::ref::referred

::remse::Initiated remote session

::sac::School Assessment Coordinator

::sis::student information system

::studprof::Student Profile report

::studprog::Student Progress report

::stb::Secure Testing Browser

::sadmin::System Administrator

::swvtr::Students Without Valid Test Results

::tt2::Transferred to Tier 2

::viewr::View Reports

::vute::View/Update Test Events

::wbm::Web-based MAP

::wpt::walked partner through

::wtk::wants to know

::wts::wants to see

; Generic Templates
^1::Send Issue/Update: {Enter}{Enter}{Enter}{Enter}Steps Taken: {Enter}{Enter}{Enter}{Enter}Define Resolution/Next Steps: {Enter}{Enter}{Enter}{Enter}Additional Notes:{Enter}{Up 13}{Down}{End}

^2::Send REPORTS RESEARCH{enter}Issue: {enter}Report: {enter}Term: {enter}School: {enter}Teacher: {enter}Student: {enter}Test affected: {enter}Date taken: {enter}Test within window: {enter}Score in database: {enter}ETL failure: {enter}Missing attributes:{Up 13}{Down}{end}

^3::Send TESTING ISSUE{enter}Issue description: {enter}Occurs When: {enter}Impact: {enter}Frequency: {enter}Test type: {enter}Time of day: {enter}Number of students affected: {enter}Does refreshing Secure Test Browser or App help?: Yes/No{enter}Device type: Windows/MAC/Chrome/iPad{enter}Operating system: {enter}Is partner using Secure Test Browser/App: Yes/No{enter}Network connection type: Wired/Wireless/Mixed{enter}Network admin: Yes/No{enter}Firewall name: {enter}Content filter name: {end}

; Common Case Notes
; Password Recovery - Successfully walked partner through recovering password.
::#pass::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}n/a{tab 6}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passAR::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passNE::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passNV::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}

; Password Recovery - Partner has no profile in NWEA.
::#passnopro::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}n/a{tab 6}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passnoproAR::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}ar{tab 2}referred to district admin{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passnoproNE::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}ne{tab 2}referred to district admin{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passnoproNV::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}nv{tab 2}referred to district admin{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}

; Password Recovery - Partner's email is incorrect.
::#passemail::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}n/a{tab 6}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passemailAR::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}ar{tab 2}referred to district admin{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passemailNE::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}ne{tab 2}referred to district admin{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passemailNV::{shift down}{tab 10}{shift up}map g{tab}marc{tab 2}error{tab}login{tab 2}nv{tab 2}referred to district admin{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Confirmed
::#testmissingconfirmed::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingconfirmedAR::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingconfirmedNE::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingconfirmedNV::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Suspended
::#testmissingsuspended::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingsuspendedAR::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingsuspendedNE::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingsuspendedNV::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}


; Student name is missing from test drop down list - Status Testing
::#testmissingtesting::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingtestingAR::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingtestingNE::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingtestingNV::{shift down}{tab 10}{shift up}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Terminated
::#testmissingterminated::{shift down}{tab 10}{shift up}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingterminatedAR::{shift down}{tab 10}{shift up}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingterminatedNE::{shift down}{tab 10}{shift up}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}
::#testmissingterminatedNV::{shift down}{tab 10}{shift up}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}

;;Dekalb IT redirect
::#dekalbit::{shift down}{tab 10}{shift up}map growth{tab}General{tab 2}Error{tab}Other{tab 2}n/a{tab 6}Dekalb IT{tab}Partner needs to work with their IT.{tab}Partner will call back and choose a different option to get their IT department.{end}

;;StudyIsland Export
::#studyIsland::{shift down}{tab 10}{shift up}map growth{tab}view reports{tab 2}how{tab}rep{tab 2}n/a{tab 6}Study Island Export{tab}Partner needs to run a study Island Export.{tab}Issue/Update:{Enter}Partner needs to run a study Island Export.{Enter 2}Steps Taken:{Enter}Walked partner through running a Data Export Scheduler and choosing the Comprehensive Data File.{Enter 2}Define Resolution/Next Steps:{Enter}Advised partner the report usually runs at the top of the hour and they can come back to this page to find the download at the bottom.{Enter 2}Additional Notes:{Enter}{end}

;;CPS Redirect
::#CPSCase::{shift down}{tab 10}{shift up}map growth{tab}general{tab 2}how{tab}other{tab 2}n/a{tab 6}CPS Redirect{tab}Partner is calling in for support from Chicago Public Schools.{tab}Partner is calling in for support from Chicago Public Schools.{enter 2}Advised partner to call the CPS Service Desk for a Service Now ticket #.{enter}The CPS Service Desk number is (773) 553-3925, option 6. {Enter 2}{end}

;;One Student Cannot Test
::#oneStudent::{shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}testing{tab 2}n/a{tab 6}One Student cannot Test{tab}An individual student consistently has issues testing.{tab}Issue/Update:{enter}An individual student consistently has issues testing.{enter 2}Steps Taken:{enter}Advised partner to:{enter}- Try testing the student on a second or different type of device to ensure the issue isn't device specific.{enter}- Test the student again, and monitor the student for actions such as clicking before the screen has refreshed, leaning on the mouse button, swinging a foot that touches a network cable, etc.{enter}- Remove access to the keyboard completely, and use only a mouse for testing. If testing on a laptop or Chromebook, move the computer further away from the student to ensure they are not touching the keyboard.{enter}- If using a touchpad, use an external mouse for testing. Ensure the students aren't touching the touchpad during this process. With the variety of swipe or multi-touch gestures available on touchpads, inadvertent movements may cause issues.{enter}- Test the student while logged in to a local administrator account on the computer. This is to rule out any permissions issues with the student's account on the computer.{enter}- Have a teacher or proctor record the answers for the student. This person must be very careful not to give any indication to the student of whether an answer is correct or incorrect.{enter 2}Define Resolution/Next Steps:{enter}Partner will try these steps and call back with any further questions.{enter 2}Additional Notes:{enter}{end}

;;Practice Test Login
::#practiceTest::{shift down}{tab 10}{shift up}map g{tab}test player{tab 2}error{tab}practice{tab 2}n/a{tab 6}Practice Test Login{tab}Partner wanted to know the login for the practice test.{tab}Issue/Update:{Enter}Partner wanted to know the login for the practice test. {Enter 2}Steps Taken:{Enter}Advised partner the username is 'grow' and the password is 'grow'.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will log in.{Enter 2}Additional Notes: {Enter}{end}

;;Chromebook Screen Resolution Error
::#chromebookError::{shift down}{tab 10}{shift up}map g{tab}test{tab 2}error{tab}testing{tab 2}n/a{tab 6}Chromebook Screen Resolution Error{tab}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{tab}Issue/Update:{Enter}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{Enter 2}Steps Taken:{Enter}Advised partner to reset the screen resolution with the keyboard shortcut Ctrl {+} Shift {+} '0' (zero), then close and relaunch the testing app and find the student's name.{Enter 2}Define Resolution/Next Steps:{Enter}Partner was able to log students in.{Enter 2}Additional Notes: {Enter}{End}

;;Long Report Times
::#reportStuckSubmitted::{shift down}{tab 10}{shift up}map g{tab}View Report{tab 2}error{tab}Generate{tab 2}n/a{tab 6}Order Status "submitted" in Reports Queue{tab}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{tab}Issue/Update:{enter}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{Enter 2}Steps Taken:{Enter}Advised partner reports with the status 'Submitted' are currently in queue to be processed. While most reports are available instantly, larger, more complex reports can take longer to generate, and reports may take longer to generate during periods of unusually high report usage.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will check the reports queue later to download their completed report.{Enter}Partner will call back if a report is in the Submitted status for longer than 24 hours, or if the status is Cancelled.{Enter 2}Additional Notes: {Enter}{end}

;;Temp Outage - Can edit and change for each Outage. Include Parent Case Number
;::#Outage::{shift down}{tab 21}{shift up}02090260{tab 11}{down 9}{tab}{down 2}{tab 2}{down 3}{tab}{down 4}{tab 2}{down}{tab 6}MAP Skills Unavaliable{tab}Partner isn't able to see MAP Skills as an option on the MAP home page.{Tab}Issue/Update:{enter}Partner isn't able to see MAP Skills as an option on the MAP home page.{enter 2}Steps Taken:{enter}Advised partner this is an issue we're aware of and engineers are currently investigating.{enter}Verified MAP Skills is enabled for the District, but disabled for all schools.{enter 2}Define Resolution/Next Steps:{enter}Partner can check the status.nwea.org page for updates.


;;can change name if needed.
;::#helpme::
;{
;  if WinExist("List of Hotstrings")
;    WinActivate
;  Else
;  {
;    Gui, New
;    Gui, Font, s12, Times New Roman
;    Gui, Add, Text, x241 y9, Hotstrings
;    Gui, Add, Text, x11, **Enter one of the following in the subject line, making sure the Product Suite is --None--**
;    Gui, Add, Text, x15, #pass - Successfully walked partner through recovering password.
;    Gui, Add, Text, x15, #passNoPro - Partner has no profile in NWEA.
;    Gui, Add, Text, x15, #passEmail - Partner's email is incorrect.
;    Gui, Add, Text, x15, #testMissingConfirmed - Student name is missing from test drop down list - Status Confirmed
;    Gui, Add, Text, x15, #testMissingTesting - Student name is missing from test drop down list - Status Testing
;    Gui, Add, Text, x15, #testMissingSuspended - Student name is missing from test drop down list - Status Suspended
;    Gui, Add, Text, x15, #testMissingTerminated - Student name is missing from test drop down list - Status Terminated
;    Gui, Add, Text, x15, #practiceTest - Practice Test Login Information
;    Gui, Add, Text, x15, #reportStuckSubmitted - Long Report Times
;    Gui, Add, Text, x15, #chromebookError - Chromebook Screen Resolution Error on Login
;    Gui, Add, Text, x15, #oneStudent - One Student Cannot Test
;    Gui, Add, Text, x15, #dekalbIT - Dekalb IT Wrong Number
;    Gui, Add, Text, x15, #cpsCase - CPS Redirect
;    Gui, Add, Text, x15, #studyIsland - Study Island export help
;    Gui, Add, Button, x241 y475, Close
;    Gui, Show, x152 y125 w600 h525, List of Hotstrings
;    Return
;  }
;  ButtonClose:
;  GuiClose:
;      Gui, Hide
;      Return
;
;  ;closes the app
;  ;GuiClose:
;  ;ExitApp
;}

::#help::
{
  if WinExist("List of Hotstrings")
    WinActivate
  Else
  {
    Gui, New
    Gui, Font, s12, Times New Roman
    Gui, Add, Text, x11, **Enter one of the following commands in the subject line, making sure the Product Suite is --None--**
    Gui, Add, ListView, r15 w700 NoSortHdr NoSort Grid -Multi, Command|Main KA|Result
    GuiControl, +Report, ListView
    LV_ModifyCol(1,155)
    LV_ModifyCol(2,70)
    LV_ModifyCol(2,"center")
    LV_ModifyCol(3,470)
    LV_Add(,"#pass", "1630", "Successfully walked partner through recovering password")
    LV_Add(,"#passNoPro", "1630", "Partner has no profile in NWEA")
    LV_Add(,"#passEmail", "1630", "Partner's email is incorrect")
    LV_Add(,"#testMissingConfirmed", "2249", "Student name is missing from test drop down list - Status Confirmed")
    LV_Add(,"#testMissingTesting", "2249", "Student name is missing from test drop down list - Status Testing")
    LV_Add(,"#testMissingSuspended", "2249", "Student name is missing from test drop down list - Status Suspended")
    LV_Add(,"#testMissingTerminated", "2249", "Student name is missing from test drop down list - Status Terminated")
    LV_Add(,"#practiceTest", "1090", "Practice Test Login Information")
    LV_Add(,"#reportStuckSubmitted", "3185", "Long Report Times and Reports are stuck in Submitted")
    LV_Add(,"#oneStudent", "2751", "Steps to take when one student cannot test")
    LV_Add(,"#chromebookError", "2444", "Chromebook Screen Resolution Error on Login")
    LV_Add(,"#dekalbIT","", "Dekalb IT Wrong Number")
    LV_Add(,"#cpsCase", "1298", "CPS Redirect")
    LV_Add(,"#studyIsland", "1403", "Study Island export help")

    Gui, Add, Button, x307 y425, Close
    Gui, Show, x152 y125 h475, List of Hotstrings
    Return
  }
  ButtonClose:
  GuiClose:
    Gui, Hide
    Return

}
