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

; Generic Templates
^1::Send Issue/Update: {Enter}{Enter}{Enter}{Enter}Steps Taken: {Enter}{Enter}{Enter}{Enter}Define Resolution/Next Steps: {Enter}{Enter}{Enter}{Enter}Additional Notes:{Enter}{Up 13}{Down}{End}

^2::Send REPORTS RESEARCH{enter}Issue: {enter}Report: {enter}Term: {enter}School: {enter}Teacher: {enter}Student: {enter}Test affected: {enter}Date taken: {enter}Test within window: {enter}Score in database: {enter}ETL failure: {enter}Missing attributes:{Up 13}{Down}{end}

^3::Send TESTING ISSUE{enter}Issue description: {enter}Occurs When: {enter}Impact: {enter}Frequency: {enter}Test type: {enter}Time of day: {enter}Number of students affected: {enter}Does refreshing Secure Test Browser or App help?: Yes/No{enter}Device type: Windows/MAC/Chrome/iPad{enter}Operating system: {enter}Is partner using Secure Test Browser/App: Yes/No{enter}Network connection type: Wired/Wireless/Mixed{enter}Network admin: Yes/No{enter}Firewall name: {enter}Content filter name: {end}

; Common Case Notes
; Password Recovery - Successfully walked partner through recovering password.
::#pass::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down}{tab 6} Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passAR::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 2}{tab 2}{down 3}{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passNE::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 3}{tab 2}{down 3}{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passNV::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 4}{tab 2}{down 3}{tab}{enter}{tab 3}Username and Password do not match{tab}User is getting 'Username and Password do not match' when trying to log in.{tab}Send Issue/Update: {Enter}User is getting 'Username and Password do not match' when trying to log in. {Enter}{Enter}Steps Taken: {Enter}Advised partner to {Enter}- Use the 'Forgot Username or Password' button.{Enter}- Enter email and send instructions.{Enter}- Use the reset link to reset your password.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner was able to reset their password and log in.{Enter}{Enter}Additional Notes: {Enter}{End}

; Password Recovery - Partner has no profile in NWEA.
::#passnopro::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down}{tab 6} User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passnoproAR::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 2}{tab 2}{down 4}{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passnoproNE::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 3}{tab 2}{down 4}{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passnoproNV::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 4}{tab 2}{down 4}{tab}{enter}{tab 3}User Needs Login{tab}User is trying to log in but isn't able to.{tab}Send Issue/Update: {Enter}User is trying to log in but isn't able to. {Enter}{Enter}Steps Taken: {Enter}Verified partner doesn't have a profile in MAP. {Enter}Advised partner to get in touch with their System Administrator and have them create a profile.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}

; Password Recovery - Partner's email is incorrect.
::#passemail::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down}{tab 6} Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passemailAR::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 2}{tab 2}{down 4}{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passemailNE::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 3}{tab 2}{down 4}{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}
::#passemailNV::{shift down}{tab 10}{shift up}{down}{tab}{down 7}{tab 2}{down}{tab}{down 4}{tab 2}{down 4}{tab 2}{down 4}{tab}{enter}{tab 3}Unable to Reset Password{tab}User isn't able to reset their password.{tab}Send Issue/Update: {Enter}User isn't able to reset their password. {Enter}{Enter}Steps Taken: {Enter}Verified user's email in the system is different from their actual email. {Enter}Advised partner to get in touch with their System Administrator and correct the email in MAP.{Enter}{Enter}Define Resolution/Next Steps: {Enter}Partner will contact their System Administrator.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Confirmed
::#testmissingconfirmed::{shift down}{tab 10}{shift up}{down}{tab}{down 5}{tab 2}{down}{tab}{down 7}{tab 2}{down}{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Do Not Confirm. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Suspended
::#testmissingsuspended::{shift down}{tab 10}{shift up}{down}{tab}{down 5}{tab 2}{down}{tab}{down 7}{tab 2}{down}{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {E   nter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Testing
::#testmissingtesting::{shift down}{tab 10}{shift up}{down}{tab}{down 5}{tab 2}{down}{tab}{down 7}{tab 2}{down}{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Suspend. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}

; Student name is missing from test drop down list - Status Terminated
::#testmissingterminated::{shift down}{tab 10}{shift up}{down}{tab}{down 5}{tab 2}{down}{tab}{down 7}{tab 2}{down}{tab 6}Student Missing in Test Drop Down List{tab}Partner can't find student's name when trying to log into test.{tab}Issue/Update: {Enter}Student was kicked out of test and could not find their name. {Enter}{Enter}Steps Taken: {Enter}Advised Partner to {Enter}- Select student in proctor's test session. {Enter}- Select Action > Test Again. {Enter}- Refresh student browser. {Enter}{Enter}Define Resolution/Next Steps: {Enter}Student can now find their name.{Enter}{Enter}Additional Notes: {Enter}{End}


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

::dadmin::data administrator

::drr::data repair request

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

::sis::student information system

::studprof::Student Profile Report

::studprog::Student Progress Report

::stb::Secure Testing Browser

::sadmin::system administrator

::tt2::Transferred to Tier 2

::viewr::View Reports

::wbm::Web-based MAP

::wpt::walked partner through

::wtk::wants to know

::wts::wants to see

::dac::District Assessment Coordinator

::vute::View/Update Test Events

::swvtr::Students Without Valid Test Results

::hira::high level of rapid guessing

;;Dekalb IT redirect
::#dekalbit::Dekalb IT{tab}Partner needs to work with their IT.{tab}Partner will call back and choose a different option to get their IT department.{end}{tab 3}
::#cdekalb::{shift down}{tab}{shift up}{down}{tab 2}{down}{tab}{down 2}{tab 2}{down 7}{tab 2}{down}{tab 2}{down}{tab 6}

;;StudyIsland Export
::#studyIsland::Study Island Export{tab}Partner needs to run a study Island Export.{tab}Issue/Update:{Enter}Partner needs to run a study Island Export.{Enter 2}Steps Taken:{Enter}Walked partner through running a Data Export Scheduler and choosing the Comprehensive Data File.{Enter 2}Define Resolution/Next Steps:{Enter}Advised partner the report usually runs at the top of the hour and they can come back to this page to find the download at the bottom.{end}{tab 3}
