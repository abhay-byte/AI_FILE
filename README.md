# AI Unit 2: Knowledge Representation & Reasoning Practical File

This repository contains the practical exercises for Unit 2 of an Artificial Intelligence (AI) course, focusing on Knowledge Representation and Reasoning (KR&R). The experiments cover various topics including First-Order Logic (FOL), Prolog programming, planning, search algorithms, and basic Natural Language Processing (NLP) techniques using Python's NLTK library.

The code is implemented primarily in **Prolog** and **Python**.

## Table of Contents

1.  [Introduction](#introduction)
2.  [Experiments Overview](#experiments-overview)
3.  [Prerequisites](#prerequisites)
4.  [Installation](#installation)
5.  [Repository Structure](#repository-structure)
6.  [How to Run Experiments](#how-to-run-experiments)
    *   [Running Prolog Experiments](#running-prolog-experiments)
    *   [Running Python Experiments](#running-python-experiments)
7.  [Key Concepts Demonstrated](#key-concepts-demonstrated)
8.  [Author](#author)
9.  [License](#license)

## Introduction

This repository serves as a practical complement to the theoretical concepts of Knowledge Representation and Reasoning in AI. It demonstrates how formal logic systems (Prolog) and programming techniques (Python) can be used to represent knowledge, perform logical inference, solve search and planning problems, and apply basic NLP tasks.

## Experiments Overview

The repository includes the following experiments:

*   **Experiment 1 (Prolog):** Introduction to Prolog - Basic Syntax (Facts, Rules, Queries, Variables, Atoms, Compound Terms) and SWI-Prolog Installation.
*   **Experiment 2 (Prolog):** Implementing Predicates for Input/Output and Simple Calculations (Square, Area of Shapes, Simple Interest).
*   **Experiment 3 (Prolog):** Implementing Predicates using Local Variables and Conditional Statements (Even/Odd check, Max of two numbers, Student Grading).
*   **Experiment 4 (Prolog):** Writing and Querying Simple Facts.
*   **Experiment 5 (Prolog):** Implementing Predicates for Temperature Conversion (Celsius to Fahrenheit) and Checking Conditions (Below Freezing).
*   **Experiment 6 (Prolog):** Implementing Depth First Search (DFS) Traversal for a Graph.
*   **Experiment 7 (Prolog):** Implementing a Solver for the Water Jug Problem.
*   **Experiment 8 (Prolog):** Implementing a Simple Planner for the 8 Puzzle Problem.
*   **Experiment 9 (Prolog):** Implementing the Logic for a Tic-Tac-Toe Game.
*   **Experiment 10 (Python):** Implementing the Logic for a simple Hangman Game.
*   **Experiment 11 (Python/NLTK):** Implementing Stemming for a given sentence.
*   **Experiment 12 (Python/NLTK):** Implementing Part-of-Speech (POS) Tagging for a given sentence.
*   **Experiment 13 (Python/NLTK):** Implementing Lemmatization for a given sentence.
*   **Experiment 14 (Python/NLTK):** Implementing Text Classification (Sentiment Analysis) using Naive Bayes.

## Prerequisites

Before running the code, ensure you have the following installed:

1.  **SWI-Prolog:** Required to run the `.pl` files (Experiments 1-9).
2.  **Python 3:** Required to run the `.py` files (Experiments 10-14).
3.  **NLTK Library (for Python):** Required for Experiments 11-14.

## Installation

1.  **Clone the Repository:**
    ```bash
    git clone <repository_url>
    cd <repository_name>
    ```

2.  **Install SWI-Prolog:**
    *   Follow the instructions in **Experiment 1** or visit the official SWI-Prolog download page: [https://www.swi-prolog.org/download/stable](https://www.swi-prolog.org/download/stable)
    *   Download and run the installer appropriate for your operating system.

3.  **Install Python 3:**
    *   Most operating systems come with Python pre-installed or can be easily installed. Refer to the official Python website if needed: [https://www.python.org/downloads/](https://www.python.org/downloads/)

4.  **Install NLTK:**
    *   Open your terminal or command prompt and run:
        ```bash
        pip install nltk
        ```
    *   After installing NLTK, you will also need to download specific data packages for some experiments (tokenizers, taggers, corpora). These downloads are initiated *within* the Python scripts themselves (`nltk.download(...)`), but you might need to run them the first time you execute an NLTK-based script. Be prepared for prompts to download data when running Experiments 11-14 for the first time.

## Repository Structure

The code files are organized as follows:

```
.
├── README.md
├── 2.pl
├── 3.pl
├── 4.pl
├── 5.pl
├── 6.pl
├── 7.pl
├── 8.pl
├── 9.pl
├── 10.py
├── 11.py
├── 12.py
├── 13.py
├── 13.py
└── training_data.txt                           # Training data file for Experiment 14 (Text Classification)
```

## How to Run Experiments

### Running Prolog Experiments (.pl files)

1.  Open the SWI-Prolog interpreter. You can usually do this by searching for "SWI-Prolog" in your applications or by typing `swipl` in your terminal/command prompt.
2.  In the Prolog interpreter, **consult** the desired `.pl` file. Use the file path relative to your current directory, enclosed in single quotes, or navigate to the repository directory first.
    ```prolog
    ?- consult('path/to/experiment_2_prolog_io.pl').
    % Or if in the same directory:
    ?- consult('experiment_2_prolog_io.pl').
    % A common shortcut:
    ?- ['experiment_2_prolog_io'].
    ```
    Prolog will load the facts and rules from the file.
3.  Run queries based on the loaded code. Refer to the code file itself for example queries (lines starting with `?-` in the output sections).
    ```prolog
    ?- square(5, Result).
    Result = 25.
    
    ?- grade(85, Grade).
    Grade = 'B Grade'.
    
    ?- start_dfs(a). % For experiment 6
    
    ?- move(0,0,[(0,0)]). % For experiment 7 (Initiates the search)
    
    ?- test(Plan). % For experiment 8 (Initiates the search)
    
    ?- playo. % For experiment 9 (Starts the game)
    ```
4.  To exit the SWI-Prolog interpreter, type:
    ```prolog
    ?- halt.
    ```

### Running Python Experiments (.py files)

1.  Open your terminal or command prompt.
2.  Navigate to the directory where you cloned the repository using the `cd` command.
3.  Run the Python script using the `python` command:
    ```bash
    python experiment_10_python_hangman.py
    ```
4.  For NLTK experiments (11-14), the script might prompt you to download necessary data the first time you run it. Follow the on-screen instructions. You can also pre-download data manually using:
    ```python
    import nltk
    nltk.download('punkt') # For tokenization
    nltk.download('averaged_perceptron_tagger') # For POS tagging
    nltk.download('omw-1.4') # For lemmatization (part of WordNet)
    nltk.download('wordnet') # For lemmatization
    ```
5.  Follow the prompts within the script (e.g., entering a sentence for NLP tasks, entering guesses for Hangman).

## Key Concepts Demonstrated

This repository provides practical examples illustrating key AI concepts:

*   **Knowledge Representation:** Using Prolog facts/rules and Python data structures (lists, sets, dictionaries) to represent information about the world and relationships.
*   **Logic Programming:** Writing programs based on logical relationships (Prolog).
*   **Inference:** Prolog's built-in inference engine using Unification and Backtracking to answer queries and explore solutions.
*   **Planning:** Representing states, actions, preconditions, effects, and searching for sequences of actions to reach a goal (8 Puzzle, Water Jug - simplistic planners).
*   **Search Algorithms:** Implementing Depth First Search (DFS) in Prolog.
*   **Constraint Satisfaction:** The Water Jug and 8 Puzzle problems can be viewed as constraint satisfaction problems.
*   **Natural Language Processing (NLP) Basics:**
    *   **Tokenization:** Breaking text into words.
    *   **Stemming & Lemmatization:** Reducing words to base forms for analysis.
    *   **Part-of-Speech Tagging:** Identifying grammatical roles of words.
    *   **Text Classification:** Categorizing text using a simple machine learning model (Naive Bayes).

## Author

*   [Abhay Raj] - (Link to your GitHub Profile, e.g., `https://github.com/abhay-byte`)


