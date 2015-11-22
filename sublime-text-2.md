### user-settings
```
{
  "bold_folder_labels": true,
  "fade_fold_buttons": false,
  "font_size": 10.0,
  "highlight_line": true,
  "ignored_packages":
  [
  ],
  "open_files_in_new_window": false,
  "shift_tab_unindent": true, // `shift + tab` for unindent
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "vintage_ctrl_keys": true,  // Enable `vim` shortcuts
  "hot_exit": false,  // Do not auto-save the current project
  "remember_open_files": false  // Do not open the previous project
  "rulers": // show a vertical ruler in edit area
  [
    80,
    120
  ],
  "shift_tab_unindent": true,
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "vintage_ctrl_keys": true,
  "ensure_newline_at_eof_on_save": true,
  "trim_trailing_white_space_on_save": true,
  "tab_completion": false,
  "highlight_modified_tabs": true
}
```

### Packages in use
- SublimeCodeIntel
- Alignment
- Git
- Markdown Preview
- TrailingSpaces
- CoffeeScript
  - `git clone git://github.com/jashkenas/coffee-script-tmbundle CoffeeScript && cp -r CoffeeScript/ ~/.config/sublime-text-2/Packages/`
- Stylus
  - `git clone https://github.com/LearnBoost/stylus.git Stylus && cp -r Stylus/ ~/.config/sublime-text-2/Packages/`
- Babel-Sublime
- Oceanic Next Color Theme
- Pretty JSON
- SublimeEvernote
- SublimeTmpl
- MarkDownEditing
- SublimeLinter

### Template in Sublime
You can create your preferred template in Sublime if you have `SublimeTmpl` installed.

Here is what you should do to create a template:
1. Create a template file at `Users/you/Library/Application\ Support/Sublime\ Text\ 3/Packages/SublimeTmpl\templates`. Let's say, `dailynode.tmpl`.
```
* what I've done today
    *
* problems
    *
* things to share
    *
* plan for tomorrow
    *
* others
    *
```
2. Edit config files at SublimeTmpl package folder: `Default.sublime-commands`, `Default.sublime-keymap`, `Main.sublime-menu`, `sublime-tmpl.py` as what default items do. For example, setting a shortcut in `Default.sublime-keymap` goes like
```
{
    "keys": ["ctrl+alt+n"], "command": "sublime_tmpl",
    "args": {"type": "dailynote"}, "context": [{"key": "sublime_tmpl.dailynote"}]
}
```

### Code Snippet
You can create a code snippet in Sublime and attach a shortcut to it.

1. Click `Tools -> new snippet...` in menubar, and edit you own snippet like:
```
<snippet>
  <content><![CDATA[
// your code snippet
import React from 'react';

let ${1:componentName} = React.createClass({
  propTypes: {
  },

  getInitialState() {
    return {};
  },

  componentWillMount() {
  },

  componentDidMount() {
  },

  componentWillUnmount() {
  },

  componentWillReceiveProps(nextProps) {
  },

  shouldComponentUpdate(nextProps, nextState) {
  },

  componentWillUpdate(nextProps, nextState) {
  },

  componentDidUpdate(prevProps, prevState) {
  },

  render() {
  }
});

module.exports = ${1:componentName};
]]></content>
  <!-- Optional: Set a tabTrigger to define how to trigger the snippet -->
  <tabTrigger>React.create</tabTrigger>
</snippet>
```
2. Save it at `/Users/you/Library/Application Support/Sublime Text 2/Packages/User` and name it like `react-component.sublime-snippet`
3. Then whenever you type `React.create` in Sublime, press `Tab` and you will have the snippet above added in.

### ESlint
1. Install package: SublimeLinter ESLint
2. Create a eslint configuration file `.eslintrc` either in your project root or in your home directory
3. [Reference: Set up Sublime Text for Meteor ES6 (ES2015) and JSX Syntax and Linting](http://info.meteor.com/blog/set-up-sublime-text-for-meteor-es6-es2015-and-jsx-syntax-and-linting)

