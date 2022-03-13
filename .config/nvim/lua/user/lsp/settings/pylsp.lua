return {
	settings = {
    pylsp = {
      configurationSource = { "pylint" },
      plugins = {
        pylint = { enabled = false },
        flake8 = { enabled = false },
        pycodestyle = { enabled = true },
        pyflakes = { enabled = false },
      }
    }
  }
}

