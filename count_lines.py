import os

def count_lines(path):
    try:
        with open(path, 'r', encoding='utf-8') as f:
            return sum(1 for _ in f)
    except Exception as e:
        print(f"❌ Error reading {path}: {e}")
        return 0

def print_tree(folder='lib', indent=''):
    total = 0
    entries = sorted(os.listdir(folder))

    for i, entry in enumerate(entries):
        full_path = os.path.join(folder, entry)
        is_last = (i == len(entries) - 1)
        pointer = '└── ' if is_last else '├── '
        new_indent = indent + ('    ' if is_last else '│   ')

        if os.path.isdir(full_path):
            print(f"{indent}{pointer}{entry}/")
            total += print_tree(full_path, new_indent)
        elif entry.endswith('.dart'):
            line_count = count_lines(full_path)
            dots = '.' * (40 - len(entry)) if len(entry) < 40 else ' '
            print(f"{indent}{pointer}{entry} {dots} {line_count} lines")
            total += line_count

    return total

if __name__ == '__main__':
    print("lib/")
    total_lines = print_tree('lib', indent='') 
    print('-' * 50)
    print(f'🧮 Total{"".ljust(38, ".")} {total_lines} lines')
