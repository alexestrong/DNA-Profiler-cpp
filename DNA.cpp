/*
 * File:          DNA.cpp
 * Project:       CMSC 202 Project 3, Spring 2021
 * Author:        Alex Strong
 * Date:          4/1/21
 * Section:       52
 * E-mail:        astrong3@umbc.edu
 *
 * Description:   This file contains the DNA.cpp
 *                in order created the DNA linked lists containing
 *                the DNA sequences
 *
 */

#include "DNA.h"

//Default constructor
DNA::DNA() {
    m_head = nullptr;
    m_tail = nullptr;
    m_name = "Unnamed";
    m_size = 0;
}

//Overloaded constructor to assign name
DNA::DNA(string theName) {
    m_head = nullptr;
    m_tail = nullptr;
    m_name = theName;
    m_size = 0;
}

//Destructor
DNA::~DNA() {
    Node *curr = m_head;

    while (curr != nullptr){
        m_head = curr;
        curr = curr->m_next;
        delete m_head;
    }
    m_head = nullptr;
    m_tail = nullptr;
    m_size = 0;
}

//Builds a new node that is attached at the end of the linked list
void DNA::InsertEnd(char data) {
    //Builds a new temporary node
    Node *temp = new Node();
    temp->m_data = data;
    temp->m_next = nullptr;

    if(m_head == nullptr){
        m_head = temp;
        m_tail = temp;
    }else{
        m_tail->m_next = temp;
        m_tail = temp;
    }
    m_size++;
}

//Getter for name of DNA object
string DNA::GetName() {
    return m_name;
}

//Getter for size of DNA object
int DNA::GetSize() {
    return m_size;
}

//Rearranges linked list to have the start at the end and end at the start
void DNA::ReverseSequence() {
    Node *curr = m_head;
    Node *prev = nullptr;
    Node *next = nullptr;

    //Sets tail to the head
    m_tail = m_head;
    while (curr != nullptr){
        next = curr->m_next;
        curr->m_next = prev;

        prev = curr;
        curr = next;
    }
    //After reversed, sets head to the last occupied node
    m_head = prev;
}

//Compares current SUSPECT linked list to the passed in EVIDENCE linked list
//to search for matches on entire sequence
bool DNA::CompareSequence(DNA &evidence) {
    Node *susCurr = m_head;
    Node *eviCurr = evidence.m_head;
    Node *originalSus;
    int targetSize = evidence.m_size - 1;
    int matchesFound = 0;
    bool foundMatch = false;
    char currentEviChar;
    char currentSusChar;

    //Loop will exit when current Suspect node is null OR match is found
    while(susCurr != nullptr && !foundMatch){
        //Loop will exit when either of the current nodes are null
        while(eviCurr != nullptr  && susCurr != nullptr){
            //Node data is pushed into a variable that hold chars
            currentEviChar = eviCurr->m_data;
            currentSusChar = susCurr->m_data;

            //Keeps track of current suspect node before traversal
            originalSus = susCurr;

            //Loop continues running when individual match is found
            while((currentEviChar == currentSusChar) && (eviCurr->m_next != nullptr) && (susCurr->m_next != nullptr)){
                matchesFound++;
                // Next 4 lines traverse the nodes and updates the char containing variables
                eviCurr = eviCurr->m_next;
                susCurr = susCurr->m_next;
                currentEviChar = eviCurr->m_data;
                currentSusChar = susCurr->m_data;
                //If matches found == the size of the evidence list
                if (matchesFound == targetSize){
                    foundMatch = true;
                }
            }

            if(foundMatch) {
                //Set to nullptr to exit the loop
                susCurr = nullptr;
            }else{
                //If match not completely found, suspect node will reset to it's next spot pre-traversal
                susCurr = originalSus->m_next;
            }
            //Resets evidence node back to it's start and matches found back to 0
            eviCurr = evidence.m_head;
            matchesFound = 0;
            }
        }
    return foundMatch;
}

//Traverses through linked list to return the character at the passed in node number
char DNA::GetData(int nodeNum) {
    Node *curr = m_head;
    int counter = 0;
    char foundCharacter = '\n';

    while(curr != nullptr){
        if(counter == nodeNum){
            foundCharacter = curr->m_data;
        }
        curr = curr->m_next;
        counter++;
    }
    return foundCharacter;
}

//Formats the output whenever a DNA object is called in a cout statement
ostream &operator<<(ostream &output, DNA &myDNA) {
    output << myDNA.GetName() << endl;
    for(int i = 0; i < myDNA.GetSize(); i++){
        output << myDNA.GetData(i) << "->";
    }
    output << "END" << endl;

    return output;
}