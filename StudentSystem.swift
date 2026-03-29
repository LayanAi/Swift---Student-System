//Studnt struct 

struct Student {
  var name : String
  var grades :[Double]  // Array to store all grades for a single student
  
// function to calculate the average grade
 func average () -> Double {
      if grades.isEmpty {
    return 0              // if no grades -> return 0 and exit the function  
  }
      var total = 0.0  
      for x in grades {
          total += x
      }
      return  total / Double(grades.count)

}//end function




//function to determine grade level (A, B ,C , D , F)
func gradeLevel () -> String {
    let avg = average()    //Get the student's average

switch avg {
case 90...100 :
return "A"
case 80..<90:
return "B"
case 70..<80:
return "C"
case 60..<70:
return "D"
default : 
return "F"

    }
  }
}//end struct


//class to manage multiple studnets
public class StudentSystem {

var students : [Student] = []  //Array to store all students in the system

//function to add  a new student to the system
func addStudent( n : String , g : [Double]) {
    let new_student = Student (name : n , grades: g) 
    students.append(new_student)  
    print("Student added !")
}

//function to display all students and their information
func showStudents()  {
    if students.isEmpty{
       print("No students found")
       return  
}


    for student in students {
         print ("Name: \(student.name) \n Grades: \(student.grades) \n Average: \(student.average()) \n Level: \(student.gradeLevel())\n")
        print("---------------------")
     }
  }


//function to  search for a student by name
func searchStudent (name : String){
    for student in students {
       if student.name.lowercased() == name.lowercased(){
       print("Student found!")
       print("Name: \(student.name) \n Grades: \(student.grades) \n Average: \(student.average()) \n Level: \(student.gradeLevel())")
      return
     }
  }

  print("Student not found!")
   }
}//end class



//Testing the system
let system = StudentSystem()
system.addStudent(n : "Lama" ,g : [95,88,92])
system.addStudent(n : "Sara" ,g :[70,75,80] )
system.showStudents()
system.searchStudent(name : "Lama")
