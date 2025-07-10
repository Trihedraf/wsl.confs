if(Test-Path .\archlinux.wsl)
{
    wsl --install --from-file archlinux.wsl
}
else
{
    wsl --install archlinux
}
