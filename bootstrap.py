#!/usr/bin/env python

if __name__ == '__main__':
    import os
    import sys
    if not os.path.exists('.tox/configure'):
        import subprocess
        print("Bootstrapping ...")
        subprocess.check_call(['python', '-mvirtualenv', '.tox/configure'])
        print("Installing `jinja2` and `matrix` into bootstrap environment ...")
        if sys.platform == 'win32':
            subprocess.check_call([r'.tox\configure\Scripts\pip', 'install', 'jinja2', 'matrix'])
        else:
            subprocess.check_call(['.tox/configure/bin/pip', 'install', 'jinja2', 'matrix'])
    if sys.platform == 'win32':
        exec(compile(
            open(r'.tox\configure\Scripts\activate_this.py').read(),
            r'.tox\configure\Scripts\activate_this.py',
            'exec'
        ), dict(__file__=r'.tox\configure\Scripts\activate_this.py'))
    else:
        exec(compile(
            open('.tox/configure/bin/activate_this.py').read(),
            '.tox/configure/bin/activate_this.py',
            'exec'
        ), dict(__file__='.tox/configure/bin/activate_this.py'))
    import jinja2
    import matrix

    jinja = jinja2.Environment(
        loader=jinja2.FileSystemLoader(os.path.join('ci', 'templates')),
        trim_blocks=True,
        lstrip_blocks=True,
        keep_trailing_newline=True
    )
    tox_environments = {}
    for alias, conf in matrix.from_file('setup.cfg').items():
        python = conf['python_versions']
        deps = conf['dependencies']
        if 'coverage_flags' in conf:
            cover = {'false': False, 'true': True}[conf['coverage_flags'].lower()]
        if 'environment_variables' in conf:
            env_vars = conf['environment_variables']

        tox_environments[alias] = {
            'python': 'python' + python if 'py' not in python else python,
            'deps': deps.split(),
        }
        if 'coverage_flags' in conf:
            tox_environments[alias].update(cover=cover)
        if 'environment_variables' in conf:
            tox_environments[alias].update(env_vars=env_vars.split())

    for name in os.listdir(os.path.join('ci', 'templates')):
        with open(name, 'w') as fh:
            fh.write(jinja.get_template(name).render(tox_environments=tox_environments))
        print("Wrote %s" % name)

    print("DONE.")
