local ls = require("luasnip") -- LuaSnip alias
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- CMake snippet with basic configuration
ls.add_snippets("cmake", {
	s("cmake", {
		t({
			"cmake_minimum_required(VERSION 3.10)",
			"project(",
		}),
		i(1, "ProjectName"), -- Placeholder for project name
		t({ " LANGUAGES C CXX )", "", "" }),
		t("set(CMAKE_C_STANDARD "),
		i(2, "11"),
		t(")"), -- C standard version
		t({ "", "set(CMAKE_CXX_STANDARD " }),
		i(3, "17"),
		t(")"), -- C++ standard version
		t({ "", "", "# Add your source files", "add_executable(" }),
		i(4, "ExecutableName"),
		t(" "),
		i(5, "main.c"), -- Placeholder for source file
		t({ ")", "", "" }),
		t("# Add any additional libraries here"),
	}),
})
