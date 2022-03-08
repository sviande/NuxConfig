function fish_prompt -d Hydro
    echo -e "$_hydro_color_pwd$_hydro_pwd$hydro_color_normal $_hydro_color_git$$_hydro_git$hydro_color_normal$_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal"
    echo -e "$_hydro_prompt❱$hydro_color_normal "
end
