## Warning

Note the simple `smb.conf` file.

## Configuration

Edit the `docker-compose.yml` file, change the `volumes:` section to map the directory you want.

Eg.: I'm sharing the `/mnt/hdd_repo/Shared/` Docker host directory as the Samba path. You can change it to anything you have on the host:

```yml
volumes:
  - /home/someone/my_folder/:/Shared
```

## License

The repository is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

