; Alt + 1 将 Hello 渲染成 /textcolor{cyan}{Hello} 方便论文修改和导师观看
!1:: {
    ; 保存剪贴板中的内容
    clipboard_saved := A_Clipboard
    A_Clipboard := ""
    ; 复制选中的文字到剪贴板
    Send("^c")
    ClipWait(0.08)
    ; 获取剪贴板中的文字
    SelectedText := A_Clipboard
    ; 修改文本样式
    ModifiedText := "\textcolor{cyan}{" . SelectedText . "}"
    ; 将修改后的文本复制到剪贴板
    A_Clipboard := ModifiedText
    ; 将修改后的文本粘贴回原位置
    ClipWait(0.1)
    Send("^v")
    ; 恢复剪贴板内容
    ClipboardAll := clipboard_saved
    ; A_Clipboard := clipboard_saved
    clipboard_saved := ""
    return
}