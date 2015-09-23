module.exports =
  activate: ->
    atom.commands.add "atom-workspace", "hashy:convert", => @convert()

  convert: ->
    editor = atom.workspace.getActiveTextEditor()
    selection = editor.getSelectedText()
    replace_reg_exp = new RegExp(":([a-z_\d]+)\s*=>\s*","g")
    replacement = selection.replace(replace_reg_exp,"$1: ")

    editor.insertText(replacement)
