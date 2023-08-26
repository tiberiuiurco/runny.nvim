# runny.nvim
Neovim plugin to automatically run code (only c++ at the moment) in a buffer.
Suitable for those who use neovim for Competitive Programming and want to write code fast.

# Advantages
- See the output of your project in another window
- Instantly compile and run with a keybinding
- Takes into account all your files in the current working directory (doesn't work recursively atm)
- Automatically feeds the "a" register yanked input to the runtime so that you only have to copy the text once. (Perfect for CP)
- Just fast & easy to use

# Installation
If you are using lazy for installing plugins, just add this line:

```lua
{"tiberiuiurco/runny.nvim"}
```

Should work on other plugin managers as well. Please check its documentation for installing.
The plugin works out of the box and there are no settings you can make. This will change in the future as more user-customizable options will be added.
I'm open for suggestions.

# Usage
The workflow is the following:
1. You open your project and type *:vnew* so that a new empty window will appear (should be empty because otherwise there would be a data loss risk).
2. Press *F8* key while being on the new window for marking it as the window where the output will be printed.
3. Now go back to coding your project and whenever you're coding, pressing *F4* should Compile & Run the project, outputting everything in the newly created buffer.
0. If you need an input (such as std::cin), information stored in "a" register in neovim should automatically be fed to the compiler.
   For example: copying this line in the "a" register (by selecting the text and pressing *"ay*).
   ```
   1 2 3
   ```
   And by running the following code:
   ```cpp
   #include<iostream>
   using namespace std;

   int main(){
       int a, b, c;
       cin >> a >> b >> c;

       cout << a << " " << b << " " << c << endl;

       return 0;
   }
   ```

   Will output *1 2 3* in the newly created buffer.
   The concept is simple and easy to use.
