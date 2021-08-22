/*
 * File:          Sequencer.cpp
 * Project:       CMSC 202 Project 3, Spring 2021
 * Author:        Alex Strong
 * Date:          4/1/21
 * Section:       52
 * E-mail:        astrong3@umbc.edu
 *
 * Description:   This file contains the Sequencer.cpp
 *                in order to run the primary user selected functions
 *
 */

#include "Sequencer.h"


//Constructor; assigns name and runs two member functions
Sequencer::Sequencer(string fileName) {
m_fileName = fileName;
ReadFile();
MainMenu();
}


//Destructor
Sequencer::~Sequencer() {
    //Collects the size of the how many strands there are of each
    int susSize =  m_suspects.size();
    int eviSize = m_evidence.size();

    cout << "Deleting Suspects." << endl;
    //Traverses suspects list to delete each linked list
    for (int i = 0; i < susSize; i++){
        delete m_suspects[i];
    }
    //Traverses evidence list to delete each linked list
    cout << "Deleting Evidence." << endl;
    for (int i = 0; i < eviSize; i++){
        delete m_evidence[i];
    }
}


//Looks at each DNA linked list in both vectors and displays all data content within
void Sequencer::DisplayStrands() {
    int susSize =  m_suspects.size();
    int eviSize = m_evidence.size();

    //Next 4 lines make use of the friend ostream operator
    for (int i = 0; i < susSize; i++)
        cout << *m_suspects[i] << endl;
    for (int i = 0; i < eviSize; i++)
        cout << *m_evidence[i] << endl;
}


//Reads in a file and creates a linked list based on the data read in
void Sequencer::ReadFile() {
    string suspect, evidence, currentName, currentDNA;
    int currentSize;
    int lineCounter = 1;
    const char DELIMITER = ',';
    int countingStrands = 0;

    ifstream infile(m_fileName);
    if (infile.is_open()){
        //While loops runs as long as it can getline from file
        while(getline(infile, currentName)){
            //Creates new DNA with overloaded operator to assign name
            DNA *placeholder = new DNA(currentName);

            //If odd numbered line in the .txt file, code will check if its reading in suspect or evidence
            if (lineCounter % 2 == 1){
                if (currentName[0] == 'S'){
                    m_suspects.push_back(placeholder);
                    countingStrands++;
                }
                if (currentName[0] == 'E'){
                    m_evidence.push_back(placeholder);
                    countingStrands++;
                }
            }
            lineCounter++;

            //If it's the following even line in the .txt file, code will fill DNA linked list with sequence data
            if (lineCounter % 2 == 0){
                //Moves to next line which contains the DNA sequence data
                getline(infile, currentDNA);
                currentSize = currentDNA.size();
                for (int i = 0; i < currentSize; i++){
                    //Adds node to DNA linked list as long it isn't the comma DELIMITER that separates the data
                    if (currentDNA[i] != DELIMITER)
                        placeholder->InsertEnd(currentDNA[i]);
                }
            }
            lineCounter++;
        }
    }
    infile.close();
    cout << countingStrands << " strands were loaded." << endl;
}


//Menu selector that prompts the user for what they would like to do, then executes based on user selection
void Sequencer::MainMenu() {
    int menuSelector = 0;

    //Do-while loop so user is prompted at least once. Also accounts for input validation
    do {
        cout << "What would you like to do?"<< endl;
        cout << "1. Display Strand" << endl;
        cout << "2. Reverse Sequence" << endl;
        cout << "3. Check Suspects" << endl;
        cout << "4. Exit" << endl;
        cin >> menuSelector;
        if (menuSelector <= 4 && menuSelector > 0){
            switch (menuSelector) {
                case 1:
                    DisplayStrands();
                    break;
                case 2:
                    ReverseSequence();
                    break;
                case 3:
                    CheckSuspects();
                    break;
                case 4:
                    //(cout is placed here because inside destructor, it runs more than once)
                    cout << "DNA removed from memory."  << endl;
                    break;
                default:
                    cout << "Unknown Entry!" << endl;
                    break;
            }
        }else{
            cout << "Please enter number 1-4!" << endl << endl;
        }
    }while(menuSelector != 4);
}

//Compares suspect strands to evidence strands to search for a match
void Sequencer::CheckSuspects() {
    int susSize = m_suspects.size();
    int eviSize = m_evidence.size();
    int matchesFound = 0;

    cout << "Checking all suspects vs. evidence..." << endl;

    //Double "for" loop to compare each suspect to each evidence strand
    for (int s = 0; s < susSize; s++){
        for (int e = 0; e < eviSize; e++){
            if (m_suspects[s]->CompareSequence(*m_evidence[e])){
                cout << "Suspect " << s + 1 << " matches " << "Evidence " << e + 1 << endl;
                matchesFound++;
            }else{
                cout << "Suspect " << s + 1 << " does NOT match " << "Evidence " << e + 1 << endl;
            }
        }
        if (matchesFound == eviSize)
            cout << "Suspect " << s + 1 << " matches ALL Evidence!" << endl;
        matchesFound = 0;
    }
    cout << endl;
}


//Asks user which sequence they would like to reverse, and then makes use of the DNA object'ss ReverseSequence function
void Sequencer::ReverseSequence() {
    int userInput = 0;
    int userSecondaryInput = 0;
    //Refined user input accounts for the entered number and translates it to a number to reference indices
    int refinedUserInput = 0;
    int susSize = m_suspects.size();
    int eviSize = m_evidence.size();

    //Do-while loop for input validation
    do {
        cout << "Which type of sequence to reverse?" << endl;
        cout << "1. Suspect" << endl;
        cout << "2. Evidence" << endl;
        cin >> userInput;
    }while (userInput > 2 || userInput < 1);

    //Suspect Selection Scenario
    if (userInput == 1){
        if (susSize > 1){
            //Do-while loop for input validation
            do {
                cout << "Choose 1-" << susSize << endl;
                cin >> userSecondaryInput;
            }while(userSecondaryInput > susSize || userSecondaryInput < 1);
            refinedUserInput = userSecondaryInput - 1;
            m_suspects[refinedUserInput]->ReverseSequence();
        }else{
            //Runs when there is only one option
            m_suspects[0]->ReverseSequence();
        }
        cout << "Done reversing Suspect " << userSecondaryInput << "'s sequence." << endl;
    }

    //Evidence Selection Scenario
    if (userInput == 2){
        if (eviSize > 1){
            //Do-while loop for input validation
            do {
                cout << "Choose 1-" << eviSize << endl;
                cin >> userSecondaryInput;
            }while(userSecondaryInput > eviSize || userSecondaryInput < 1);
            refinedUserInput = userSecondaryInput - 1;
            m_evidence[refinedUserInput]->ReverseSequence();
        }else{
            //Runs when there is only one option
            m_evidence[0]->ReverseSequence();
        }
        cout << "Done reversing Evidence " << userSecondaryInput << "'s sequence." << endl;
    }
}
