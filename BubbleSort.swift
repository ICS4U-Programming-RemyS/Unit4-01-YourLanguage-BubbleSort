// BubbleSort.swift
//
// Created by Remy Skelton
// Created on 2025-April-8
// Version 1.0
// Copyright (c) Remy Skelton. All rights reserved.
//
// This program will generate a random array of integers,
// sort it using the bubble sort algorithm

// Import Foundation
import Foundation

// Make constants for the array size, min and max values
let ARRAY_SIZE = 10
let MAX_RANDOM_NUMBER = 100
let MIN_RANDOM_NUMBER = 1

// Welcome message
print("Welcome to the Bubble Sort program!", terminator: " ")
print("This program will generate a random array of", terminator: " ")
print("integers, and sort it using the bubble sort method.")

// Create an array of random integers
var randomArray: [Int] = []

// Add random integers to the array
for _ in 0..<ARRAY_SIZE {
    let randomNumber = Int.random(in: MIN_RANDOM_NUMBER...MAX_RANDOM_NUMBER)
    randomArray.append(randomNumber)
}

// Print the unsorted array
print("Unsorted array: \n\(randomArray)")

// Get sorted array using the bubble sort algorithm
let sortedArray = bubbleSort(intsArray: randomArray)

// Print the sorted array
print("Sorted array: \n\(sortedArray)")

// Function to sort an array using the bubble sort algorithm
func bubbleSort(intsArray: [Int]) -> [Int] {
    // Create a copy of the array to modify
    var sortedArray = intsArray

    // Pass to keep track of the number of passes
    var pass = 0
    // While loop to iterate through the array
    while pass < sortedArray.count - 1 {
        // Counter to keep track of the current index
        var counter = 0
        // While loop to compare adjacent elements
        while counter < sortedArray.count - 1 - pass {
            // If the current element is greater than the next element,
            // swap them
            if sortedArray[counter] > sortedArray[counter + 1] {
                // Swap the elements
                let temp = sortedArray[counter]
                sortedArray[counter] = sortedArray[counter + 1]
                sortedArray[counter + 1] = temp
            }
            // Increment the counter
            counter += 1
        }
        // Increment the pass
        pass += 1
    }
    // Return the sorted array
    return sortedArray
}
