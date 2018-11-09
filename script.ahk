#NoEnv
SendMode Input


::studentmissingreport:: ;Hotstring to start students missing from reports template
  {
      ;Variables used in this script
      scope =
      StudentName =
      WinGet, window, ID ;may not need this var,
      Attribute =

      ;subroutines
      compileAttributes := If FirstName {
          Attribute .= "First Name `n"
        }
        If LastName {
          Attribute .= "Last Name `n"
        }
        If DOB {
          Attribute .= "Date of Birth `n"
        }
        If ID {
          Attribute .= "ID `n"
        }
        If Gender {
          Attribute .= "Gender `n"
        }
        If Grade {
          Attribute .= "Grade `n"
        }
        If Ethnicity {
          Attribute .= "Ethnicity `n"
        }
        If Class {
          Attribute .= "Class `n"
        }
        If SchoolOfRecord {
          Attribute .= "School of Record `n"
        }

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
          Gui, Add, Checkbox, vGender, Gender
          Gui, Add, Checkbox, vGrade, Grade
          Gui, Add, Checkbox, vEthnicity, Ethnicity
          Gui, Add, Checkbox, vClass, Class
          Gui, Add, Checkbox, vSchoolOfRecord, School of record
          Gui, Add, Checkbox, vFirstName, First Name
          Gui, Add, Checkbox, vLastName, Last Name
          Gui, Add, Checkbox, vID, ID
          Gui, Add, Button, -default, Continue
          Gui, Add, Button, -default, Complete
          Gui, Show,, Reporting Attributes
          return
        if (scope = class)
          Gui, Destroy

        ;Compiles all gathered information and creates case notes
        ButtonComplete:
          Gui, Submit ;Saves user input
          compileAttributes()
          Send Student: %StudentName% `nThe following attributes are missing `n%Attribute%
          ExitApp


  }
