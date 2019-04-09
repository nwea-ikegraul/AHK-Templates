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

::asg::Achievement Status and Growth report

::acoord::assessment coordinator

::cpaac::CPAA coordinator

::crf::Class Roster File

::dac::District Assessment Coordinator

::dadmin::Data Administrator

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

::searchkey::{U+02cc}

::sis::student information system

::studprof::Student Profile Report

::studprog::Student Progress Report

::stb::Secure Testing Browser

::sadmin::System Administrator

::swvtr::Students Without Valid Test Results

::tt2::Transferred to Tier 2

::tts::Text-to-speech

::viewr::View Reports

::vute::View/Update Test Events

::wbm::Web-based MAP

::wpt::walked partner through

::wtk::wants to know

::wts::wants to see

; Common Case Notes
; Password Recovery - Successfully walked partner through recovering password.
::#pass::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}n/a{tab 6}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter 2}{U+02cc}{End}
::#passAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

; Password Recovery - Partner has no profile in NWEA.
::#passnopro::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}n/a{tab 6}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passnoproAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}ar{tab 2}referred to district admin{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passnoproNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}ne{tab 2}referred to district admin{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passnoproNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}nv{tab 2}referred to district admin{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

; Password Recovery - Partner's email is incorrect.
::#passemail::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}n/a{tab 6}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passemailAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}ar{tab 2}referred to district admin{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passemailNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}ne{tab 2}referred to district admin{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#passemailNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}marc{tab 2}error{tab}login{tab 2}nv{tab 2}referred to district admin{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

; Student name is missing from test drop down list - Status Confirmed
::#testmissingconfirmed::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingconfirmedAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingconfirmedNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingconfirmedNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

; Student name is missing from test drop down list - Status Suspended
::#testmissingsuspended::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingsuspendedAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingsuspendedNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingsuspendedNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter 2}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

; Student name is missing from test drop down list - Status Testing
::#testmissingtesting::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingtestingAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingtestingNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingtestingNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

; Student name is missing from test drop down list - Status Terminated
::#testmissingterminated::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}n/a{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingterminatedAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}ar{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingterminatedNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}ne{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}
::#testmissingterminatedNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}managetest{tab 2}error{tab}selectaction{tab 2}nv{tab 2}solved by user{tab}{enter}{tab 3}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{Enter}{U+02cc}{End}

;;Dekalb IT redirect
::#dekalbit::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}General{tab 2}Error{tab}Other{tab 2}n/a{tab 6}Dekalb IT{tab}Partner needs to work with their IT.{tab}Partner will call back and choose a different option to get their IT department.{enter}{U+02cc}{end}

;;StudyIsland Export
::#studyIsland::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}viewre{tab 2}how{tab}rep{tab 2}n/a{tab 6}Study Island Export{tab}Partner needs to run a study Island Export.{tab}Issue/Update:{Enter}Partner needs to run a study Island Export.{Enter 2}Steps Taken:{Enter}Walked partner through running a Data Export Scheduler and choosing the Comprehensive Data File.{Enter 2}Define Resolution/Next Steps:{Enter}Advised partner the report usually runs at the top of the hour and they can come back to this page to find the download at the bottom.{Enter 2}Additional Notes:{Enter}{enter}{U+02cc}{end}
::#studyIslandAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}view reports{tab 2}how{tab}rep{tab 2}ar{tab 2}solved by user{tab}{Enter}{tab 3}Study Island Export{tab}Partner needs to run a study Island Export.{tab}Issue/Update:{Enter}Partner needs to run a study Island Export.{Enter 2}Steps Taken:{Enter}Walked partner through running a Data Export Scheduler and choosing the Comprehensive Data File.{Enter 2}Define Resolution/Next Steps:{Enter}Advised partner the report usually runs at the top of the hour and they can come back to this page to find the download at the bottom.{Enter 2}Additional Notes:{Enter}{enter}{U+02cc}{end}
::#studyIslandNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}view reports{tab 2}how{tab}rep{tab 2}ne{tab 2}solved by user{tab}{Enter}{tab 3}Study Island Export{tab}Partner needs to run a study Island Export.{tab}Issue/Update:{Enter}Partner needs to run a study Island Export.{Enter 2}Steps Taken:{Enter}Walked partner through running a Data Export Scheduler and choosing the Comprehensive Data File.{Enter 2}Define Resolution/Next Steps:{Enter}Advised partner the report usually runs at the top of the hour and they can come back to this page to find the download at the bottom.{Enter 2}Additional Notes:{Enter}{enter}{U+02cc}{end}
::#studyIslandNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}view reports{tab 2}how{tab}rep{tab 2}nv{tab 2}solved by user{tab}{Enter}{tab 3}Study Island Export{tab}Partner needs to run a study Island Export.{tab}Issue/Update:{Enter}Partner needs to run a study Island Export.{Enter 2}Steps Taken:{Enter}Walked partner through running a Data Export Scheduler and choosing the Comprehensive Data File.{Enter 2}Define Resolution/Next Steps:{Enter}Advised partner the report usually runs at the top of the hour and they can come back to this page to find the download at the bottom.{Enter 2}Additional Notes:{Enter}{enter}{U+02cc}{end}

;;CPS Redirect
::#CPSCase::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}general{tab 2}how{tab}other{tab 2}n/a{tab 6}CPS Redirect{tab}Partner is calling in for support from Chicago Public Schools.{tab}Partner is calling in for support from Chicago Public Schools.{enter 2}Advised partner to call the CPS Service Desk for a Service Now ticket #.{enter}The CPS Service Desk number is (773) 553-3925, option 6.{Enter}{end}
::#CPSCaseAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}general{tab 2}how{tab}other{tab 2}ar{tab 2}referred to district it{tab}{Enter}{tab 3}CPS Redirect{tab}Partner is calling in for support from Chicago Public Schools.{tab}Partner is calling in for support from Chicago Public Schools.{enter 2}Advised partner to call the CPS Service Desk for a Service Now ticket #.{enter}The CPS Service Desk number is (773) 553-3925, option 6.{Enter}{enter}{U+02cc}{end}
::#CPSCaseNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}general{tab 2}how{tab}other{tab 2}ne{tab 2}referred to district it{tab}{Enter}{tab 3}CPS Redirect{tab}Partner is calling in for support from Chicago Public Schools.{tab}Partner is calling in for support from Chicago Public Schools.{enter 2}Advised partner to call the CPS Service Desk for a Service Now ticket #.{enter}The CPS Service Desk number is (773) 553-3925, option 6.{Enter}{enter}{U+02cc}{end}
::#CPSCaseNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map growth{tab}general{tab 2}how{tab}other{tab 2}nv{tab 2}referred to district it{tab}{Enter}{tab 3}CPS Redirect{tab}Partner is calling in for support from Chicago Public Schools.{tab}Partner is calling in for support from Chicago Public Schools.{enter 2}Advised partner to call the CPS Service Desk for a Service Now ticket #.{enter}The CPS Service Desk number is (773) 553-3925, option 6.{Enter}{enter}{U+02cc}{end}

;;Practice Test Login
::#practiceTest::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test player{tab 2}error{tab}practice{tab 2}n/a{tab 6}Practice Test Login{tab}Partner wanted to know the login for the practice test.{tab}Issue/Update:{Enter}Partner wanted to know the login for the practice test. {Enter 2}Steps Taken:{Enter}Advised partner the username is 'grow' and the password is 'grow'.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will log in.{Enter 2}Additional Notes: {Enter}{end}
::#practiceTestAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test player{tab 2}error{tab}practice{tab 2}ar{tab 2}solved by user{tab}{Enter}{tab 3}Practice Test Login{tab}Partner wanted to know the login for the practice test.{tab}Issue/Update:{Enter}Partner wanted to know the login for the practice test. {Enter 2}Steps Taken:{Enter}Advised partner the username is 'grow' and the password is 'grow'.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will log in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{end}
::#practiceTestNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test player{tab 2}error{tab}practice{tab 2}ne{tab 2}solved by user{tab}{Enter}{tab 3}Practice Test Login{tab}Partner wanted to know the login for the practice test.{tab}Issue/Update:{Enter}Partner wanted to know the login for the practice test. {Enter 2}Steps Taken:{Enter}Advised partner the username is 'grow' and the password is 'grow'.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will log in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{end}
::#practiceTestNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test player{tab 2}error{tab}practice{tab 2}nv{tab 2}solved by user{tab}{Enter}{tab 3}Practice Test Login{tab}Partner wanted to know the login for the practice test.{tab}Issue/Update:{Enter}Partner wanted to know the login for the practice test. {Enter 2}Steps Taken:{Enter}Advised partner the username is 'grow' and the password is 'grow'.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will log in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{end}

;;Chromebook Screen Resolution Error
::#chromebookError::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test{tab 2}error{tab}testing{tab 2}n/a{tab 6}Chromebook Screen Resolution Error{tab}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{tab}Issue/Update:{Enter}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{Enter 2}Steps Taken:{Enter}Advised partner to reset the screen resolution with the keyboard shortcut Ctrl {+} Shift {+} '0' (zero), then close and relaunch the testing app and find the student's name.{Enter 2}Define Resolution/Next Steps:{Enter}Partner was able to log students in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{End}
::#chromebookErrorAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test{tab 2}error{tab}testing{tab 2}ar{tab 2}solved by user{tab}{Enter}{tab 3}Chromebook Screen Resolution Error{tab}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{tab}Issue/Update:{Enter}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{Enter 2}Steps Taken:{Enter}Advised partner to reset the screen resolution with the keyboard shortcut Ctrl {+} Shift {+} '0' (zero), then close and relaunch the testing app and find the student's name.{Enter 2}Define Resolution/Next Steps:{Enter}Partner was able to log students in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{End}
::#chromebookErrorNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test{tab 2}error{tab}testing{tab 2}ne{tab 2}solved by user{tab}{Enter}{tab 3}Chromebook Screen Resolution Error{tab}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{tab}Issue/Update:{Enter}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{Enter 2}Steps Taken:{Enter}Advised partner to reset the screen resolution with the keyboard shortcut Ctrl {+} Shift {+} '0' (zero), then close and relaunch the testing app and find the student's name.{Enter 2}Define Resolution/Next Steps:{Enter}Partner was able to log students in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{End}
::#chromebookErrorNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}test{tab 2}error{tab}testing{tab 2}nv{tab 2}solved by user{tab}{Enter}{tab 3}Chromebook Screen Resolution Error{tab}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{tab}Issue/Update:{Enter}A student logs into the lockdown browser or the testing URL on a Chromebook and receives a message that the resolution is incorrect and requires a 1024x768 screen resolution.{Enter 2}Steps Taken:{Enter}Advised partner to reset the screen resolution with the keyboard shortcut Ctrl {+} Shift {+} '0' (zero), then close and relaunch the testing app and find the student's name.{Enter 2}Define Resolution/Next Steps:{Enter}Partner was able to log students in.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{End}

;;Long Report Times
::#reportStuckSubmitted::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}View Report{tab 2}error{tab}Generate{tab 2}n/a{tab 6}Order Status "submitted" in Reports Queue{tab}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{tab}Issue/Update:{enter}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{Enter 2}Steps Taken:{Enter}Advised partner reports with the status 'Submitted' are currently in queue to be processed. While most reports are available instantly, larger, more complex reports can take longer to generate, and reports may take longer to generate during periods of unusually high report usage.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will check the reports queue later to download their completed report.{Enter}Partner will call back if a report is in the Submitted status for longer than 24 hours, or if the status is Cancelled.{Enter 2}Additional Notes: {Enter}{end}
::#reportStuckSubmittedAR::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}View Report{tab 2}error{tab}Generate{tab 2}ar{tab 2}solved by user{tab}{Enter}{tab 3}Order Status "submitted" in Reports Queue{tab}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{tab}Issue/Update:{enter}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{Enter 2}Steps Taken:{Enter}Advised partner reports with the status 'Submitted' are currently in queue to be processed. While most reports are available instantly, larger, more complex reports can take longer to generate, and reports may take longer to generate during periods of unusually high report usage.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will check the reports queue later to download their completed report.{Enter}Partner will call back if a report is in the Submitted status for longer than 24 hours, or if the status is Cancelled.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{end}
::#reportStuckSubmittedNE::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}View Report{tab 2}error{tab}Generate{tab 2}ne{tab 2}solved by user{tab}{Enter}{tab 3}Order Status "submitted" in Reports Queue{tab}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{tab}Issue/Update:{enter}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{Enter 2}Steps Taken:{Enter}Advised partner reports with the status 'Submitted' are currently in queue to be processed. While most reports are available instantly, larger, more complex reports can take longer to generate, and reports may take longer to generate during periods of unusually high report usage.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will check the reports queue later to download their completed report.{Enter}Partner will call back if a report is in the Submitted status for longer than 24 hours, or if the status is Cancelled.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{end}
::#reportStuckSubmittedNV::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}View Report{tab 2}error{tab}Generate{tab 2}nv{tab 2}solved by user{tab}{Enter}{tab 3}Order Status "submitted" in Reports Queue{tab}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{tab}Issue/Update:{enter}Partner requested a report, and the report's status is stuck in 'Submitted' in the reports queue.{Enter 2}Steps Taken:{Enter}Advised partner reports with the status 'Submitted' are currently in queue to be processed. While most reports are available instantly, larger, more complex reports can take longer to generate, and reports may take longer to generate during periods of unusually high report usage.{Enter 2}Define Resolution/Next Steps:{Enter}Partner will check the reports queue later to download their completed report.{Enter}Partner will call back if a report is in the Submitted status for longer than 24 hours, or if the status is Cancelled.{Enter 2}Additional Notes: {Enter}{enter}{U+02cc}{end}

;;Unable to assign Text to Speech
::#assignTTS:::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}assign test{tab 2}n/a{tab 6}Unable to Assign Text to Speech Accommodation{tab}Partner isn't able to assign Text to Speech accommodation to students.{tab}Partner isn't able to assign Text to Speech accommodation to students.{enter 2}Walked partner through assigning a test to the selected students.{enter}Advised partner Text to Speech is not available for K-2 tests or Spanish language tests.{enter 2}Partner was able to assign text to speech to their students.{enter}{enter}{U+02cc}{end}
::#assignTTSAR:::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}assign test{tab 2}ar{tab 2}solved by user{tab}{Enter}{tab 3}Unable to Assign Text to Speech Accommodation{tab}Partner isn't able to assign Text to Speech accommodation to students.{tab}Partner isn't able to assign Text to Speech accommodation to students.{enter 2}Walked partner through assigning a test to the selected students.{enter}Advised partner Text to Speech is not available for K-2 tests or Spanish language tests.{enter 2}Partner was able to assign text to speech to their students.{enter}{Enter}{U+02cc}{end}
::#assignTTSNE:::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}assign test{tab 2}ne{tab 2}solved by user{tab}{Enter}{tab 3}Unable to Assign Text to Speech Accommodation{tab}Partner isn't able to assign Text to Speech accommodation to students.{tab}Partner isn't able to assign Text to Speech accommodation to students.{enter 2}Walked partner through assigning a test to the selected students.{enter}Advised partner Text to Speech is not available for K-2 tests or Spanish language tests.{enter 2}Partner was able to assign text to speech to their students.{enter}{Enter}{U+02cc}{end}
::#assignTTSNV:::Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}manage test{tab 2}error{tab}assign test{tab 2}nv{tab 2}solved by user{tab}{Enter}{tab 3}Unable to Assign Text to Speech Accommodation{tab}Partner isn't able to assign Text to Speech accommodation to students.{tab}Partner isn't able to assign Text to Speech accommodation to students.{enter 2}Walked partner through assigning a test to the selected students.{enter}Advised partner Text to Speech is not available for K-2 tests or Spanish language tests.{enter 2}Partner was able to assign text to speech to their students.{enter}{Enter}{U+02cc}{end}

::#reportmissing::
{
  Run, missingReports.ahk
  Return
}

;;Help page with all scripts showing
::#help::
{
  Run, helpMe.ahk
  Return
}

::#whitescreen:: ;Hotstring to start whtiescreen template
{
  Run, whitescreen.ahk
  Return
}

::#rosterErrors:: ;Hotstring to start roster error template
{
  Run, rosterTesting.ahk
  Return
}

::#pleasework::
{
  Send ^f{sleep 250}product suite{esc}{sleep 250}{tab}map g{tab}view reports{tab 2}error{tab}locate{tab 2}n/a{tab 6}Student Missing from Reports{tab}^a{sleep 250}Partner has students missing from reports{tab}^a{sleep 250}helllooooooo{End}
  Return
}
