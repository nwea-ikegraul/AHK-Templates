#NoEnv
SendMode Input


::missingreport:: ;Hotstring to start students missing from reports template
  {
      ;Variables used in this script
      scope =
      StudentName =
      window := WinExist("A") ;gets the ID for the current active window where the hotstring was triggered
      attribute =


      ;Create GUI
      Gui, Add, Text,, Is the whole class missing or just specific student(s)?
      Gui, Add, Button, -default, Whole Class
      Gui, Add, Button, -default, Specific Students
      Gui, Show,, Students Missing from Reports
      return

      ;create the GUI for specific students and add buttons/text
      ButtonSpecificStudents:
        scope := student
        Gui, Destroy
        Gui, Add, Text,, Student's Name
        Gui, Add, Text,, Test
        Gui, Add, Text,, Report
        Gui, Add, Edit, vStudentName ym
        Gui, Add, Edit, vTest
        Gui, Add, Edit, vReport, Unspecified
        Gui, Add, Button, default, Next
        Gui, Show,, Students Missing from Reports
      return

      ;create the GUI for class and add buttons/text
      ButtonWholeClass:
        scope := class
        Gui, Destroy
        Gui, Add, Text,, Teachers's Name
        Gui, Add, Text,, Class Name
        Gui, Add, Text,, Test
        Gui, Add, Text,, Report
        Gui, Add, Edit, vTeachersName ym
        Gui, Add, Edit, vClassName
        Gui, Add, Edit, vTest
        Gui, Add, Edit, vReport, Unspecified
        Gui, Add, Button, default, Next
        Gui, Show,, Students Missing from Reports
      return

      ;Checks the scope then adds Gui for correct path
      ButtonNext:
        Gui, Submit ;Saves user input
        if (scope = student)
          Gui, Destroy
          Gui, Add, Text,, Are any reporting attributes missing?
          Gui, Add, Checkbox, vDOB, Date of birth
          Gui, Add, Checkbox, vgender, Gender
          Gui, Add, Checkbox, vgrade, Grade
          Gui, Add, Checkbox, vethnicity, Ethnicity
          Gui, Add, Checkbox, vclass, Class
          Gui, Add, Checkbox, vschoolOfRecord, School of record
          Gui, Add, Checkbox, vfirstName, First Name
          Gui, Add, Checkbox, vlastName, Last Name
          Gui, Add, Checkbox, vID, ID
          Gui, Add, Button, -default, Continue
          Gui, Add, Button, -default, Complete
          Gui, Show,, Reporting Attributes
          return
        if (scope = class)
          Gui, Destroy

        ButonContiue:
        Gui, Submit
        Gui, Destroy
        ;Gui, Add, Text,, Is the test completed, suspended or terminated?
        ;Gui, Add, Add, ListBox, r3 vstatus, Complete|Suspended|Terminated


        ;Compiles all gathered information and creates case notes
        ButtonComplete:
          Gui, Submit ;Saves user input

          If DOB {
            attribute .= "Date of birth `n"
          }
          If gender{
            attribute .= "Gender `n"
          }

          If ethnicity{
            attribute .= "Ethnicity `n"
          }
          If class{
            attribute .= "Class `n"
          }
          If schoolofRecord {
            attribute .= "School of Record `n"
          }
          If firstName {
            attribute .= "First Name `n"
          }
          If lastName {
            attribute .= "Last Name `n"
          }
          If ID {
            attribute .= "ID `n"
          }
          WinActivate, ahk_id %window% ;returns to window where hotstring was triggered
          Send Student is missing reporting attributes: `n%attribute%
          ExitApp


  }
