# Swift---Student-System# Swift Student Project

A simple Swift project that manages students , their grades , and their grade levels using a combination of struct and class

The system allows adding students , calculating averages , displaying all students , and searching by name.

## Features

- Add a new student
- Store multiple grades per student
- Calculate the student’s average grade
- Determine grade level (A, B, C, D, F)
- Display all students with full details
- Search for a student by name

## Data Structure

### Student Struct

struct Student {
var name : String
var grades :[Double]

}

### Student System Class

public class StudentSystem {

var students : [Student] = []

}

## Functions

- average() :  Calculates the student’s average grade
- gradeLevel() :  Determines  the grade level based on the average
- addStudent():  Adds a new student to the system
- showStudents(): Displays all students and their information
- searchStudent(): Searches for a student by name

## Example Usage

let system = StudentSystem()

system.addStudent(n : "Lama" ,g : [95,88,92])
system.addStudent(n : "Sara" ,g :[70,75,80] )

system.showStudents()
system.searchStudent(name : "Lama")

## Purpose

This project is designed for practicing :

- Swift structs and classes
- Arrays and data handling
- Functions and logic
- Searching and printing formatted output
