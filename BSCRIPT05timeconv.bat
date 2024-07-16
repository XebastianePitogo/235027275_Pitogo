@echo off
setlocal enabledelayedexpansion

REM Define the range of products (adjust as needed)
set "start_product=100"
set "end_product=10"

REM Loop through the products in reverse order
for /l %%p in (%start_product%,-1,%end_product%) do (
    set "product=%%p"
    set "factors="

    REM Find factors for the current product
    for /l %%i in (2,1,%%p) do (
        set /a "remainder=!product! %% %%i"
        if !remainder! equ 0 (
            set "factors=!factors! %%i x !product:%%i=!"

            REM Break the loop if we've found all factors
            set /a "product /= %%i"
            if !product! equ 1 goto :found_factors
        )
    )

    :found_factors
    echo Product %%p | Factors !factors!
)

endlocal
