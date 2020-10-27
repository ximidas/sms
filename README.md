## SMS

```bash
$ sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev
```

```bash
$ sudo apt install postgresql-contrib libpq-dev
```

```bash
$ bundle install
```

```bash
$ rake db:create
```

```bash
$ rake db:migrate
```

Если не установился гем ruby-gsm
```bash
$ bundle install --path vendor/bundle
```

Перед отправкой смс:
```bash
sudo chmod 777 /dev/ttyUSB2 <-- или другой номер
```

Иначе будет ошибка: ``Permission denied - /dev/ttyUSB2 ``


