import os
import MeCab
import argparse

def main():
    # Set up command-line argument parsing
    parser = argparse.ArgumentParser(description='Run MeCab with a specified dictionary.')
    parser.add_argument('-d', '--dictionary', type=str, required=True, help='Path to the MeCab dictionary')
    parser.add_argument('input_text', type=str, help='Text to be processed by MeCab')

    # Parse the command-line arguments
    args = parser.parse_args()

    # Ensure the dictionary path is properly formatted
    dictionary_path = os.path.normpath(args.dictionary)

    # Initialize the MeCab tagger with the specified dictionary
    try:
        tagger = MeCab.Tagger(f'-d "{dictionary_path}"')
    except Exception as e:
        print(f"An error occurred: {e}")
        sys.exit(1)

    # Split the input text into sentences and process each one
    for sentence in args.input_text.split('\n'):
        if sentence:  # Skip empty lines
            # Parse the sentence and extract the surface forms
            node = tagger.parseToNode(sentence)
            words = []
            while node:
                if node.surface != '':  # Skip empty nodes
                    words.append(node.surface)
                node = node.next
            # Join the words with spaces and print the sentence
            print(' '.join(words))

if __name__ == '__main__':
    main()