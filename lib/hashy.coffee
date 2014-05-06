module.exports =
  activate: ->
    atom.workspaceView.command "hashy:convert", => @convert()

  convert: ->
    editor = atom.workspace.activePaneItem
    selection = editor.getSelection().getText()
    replace_reg_exp = new RegExp(":([a-z_\d]+) =>","g")
    replacement = selection.replace(replace_reg_exp,"$1:")

    editor.insertText(replacement)
