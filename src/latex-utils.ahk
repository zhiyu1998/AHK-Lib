; Alt + 1 将 Hello 渲染成 /textcolor{cyan}{Hello} 方便论文修改和导师观看
!1:: {
    ; 保存剪贴板中的内容
    clipboard_saved := A_Clipboard
    A_Clipboard := ""
    ; 复制选中的文字到剪贴板，修改文本样式
    Send("^c")
    ClipWait(0.08)
    SelectedText := A_Clipboard
    ModifiedText := "\textcolor{cyan}{" . SelectedText . "}"
    ; 将修改后的文本复制到剪贴板
    A_Clipboard := ModifiedText
    ClipWait(0.1)
    Send("^v")
    ; 恢复剪贴板内容
    Sleep(1) ; 这里不使用则无法恢复
    A_Clipboard := clipboard_saved
    clipboard_saved := ""
    return
}