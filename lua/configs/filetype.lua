vim.filetype.add({
    pattern = {
    ['compose%.yaml'] = 'yaml.docker-compose',
    ['compose%.yml'] = 'yaml.docker-compose',
    ['docker-compose%.yaml'] = 'yaml.docker-compose',
    ['docker-compose%.yml'] = 'yaml.docker-compose',
    },
})
