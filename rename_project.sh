#!/bin/bash

# 获取用户输入的项目名称
echo "Please enter the project name:"
read project_name

# 替换根目录和 CMakeLists.txt 文件中的项目名称
replace_project_name() {
    find . -type f -name "CMakeLists.txt" -exec sed -i "s/ProjectName/$project_name/g" {} \;
    mv "ProjectName" "$project_name"
}

# 执行替换
replace_project_name

echo "Project name has been updated to '$project_name'"
