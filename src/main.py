import subprocess


def brute_force_steghide(file_path, wordlist_path):

    file_path = input("Enter the image path :")
    wordlist_path = input("Enter the wordlist path :")

    YELLOW = '\033[93m'
    RESET = '\033[0m'
    BLUE = "\033[94m"
    RED = '\033[91m'
    
    try:
        with open(wordlist_path, 'r', encoding='utf-8', errors='ignore') as wordlist:
            for password in wordlist:
                password = password.strip()  # Clean up the password
                try:
                    # Attempt to check if password is correct without extracting data
                    result = subprocess.run(
                        ['steghide', 'info', file_path, '-p', password],
                        stdout=subprocess.PIPE,
                        stderr=subprocess.PIPE,
                        text=True
                    )

                    # Check for success message
                    if "embedded file" in result.stdout:
                        print(f"{YELLOW}[+] Password found: {password}")
                        return password
                    else:
                        print(f"{BLUE}[-] Attempt failed: {password}")

                except subprocess.SubprocessError as e:
                    print(f"Error with password {password}: {e}")

    except FileNotFoundError:
        print(f"{RED}[-] Wordlist file not found.")
        return None
    except Exception as e:
        print(f"{RED}An unexpected error occurred: {e}")
        return None

    print(f"{RED}[-] Password not found in wordlist.")
    return None
    

brute_force_steghide('hidden_image.jpg', 'wordlist.txt')


