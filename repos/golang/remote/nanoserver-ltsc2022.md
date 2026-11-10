## `golang:nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:463adca1d8daa4f2c24414871dcecedfe609c25b1d9556728c4018f7e1890d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5773; amd64

### `golang:nanoserver-ltsc2022` - windows version 10.0.20348.5773; amd64

```console
$ docker pull golang@sha256:6f389370243d7aa80e87e5d33f5e121f23f92decc2c38e25a136defd6c439e45
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199255610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29472f95855777e9cf2dc90a7e55d6d6912c384d9bd9e5e08366c5cd928d8577`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sun, 25 Oct 2026 09:42:53 GMT
RUN Apply image 10.0.20348.5773
# Tue, 10 Nov 2026 18:50:20 GMT
SHELL [cmd /S /C]
# Tue, 10 Nov 2026 18:50:22 GMT
ENV GOPATH=C:\go
# Tue, 10 Nov 2026 18:50:23 GMT
USER ContainerAdministrator
# Tue, 10 Nov 2026 18:50:36 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Tue, 10 Nov 2026 18:50:37 GMT
USER ContainerUser
# Tue, 10 Nov 2026 18:50:38 GMT
ENV GOLANG_VERSION=1.27.4
# Tue, 10 Nov 2026 18:52:41 GMT
COPY dir:046e3a79934e4329b17e94daaaac02d4c5849fafce4bfbeac0b852c0ecfdd6c0 in C:\Program Files\Go 
# Tue, 10 Nov 2026 18:52:44 GMT
RUN go version
# Tue, 10 Nov 2026 18:52:47 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:236d90a718e9e819ac09cbda6488d7cc66c394fc52c2cfc8176cef5e10ef66b0`  
		Last Modified: Tue, 27 Oct 2026 01:09:48 GMT  
		Size: 125.9 MB (125926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e79b783a138510d43d8f45caa86256ef348d5fdcb00a6dcc57e276bc15201a8`  
		Last Modified: Tue, 10 Nov 2026 18:52:53 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bb2a17915d248a7d04ffab2a7d2047d9665b6ef50cce6c57e8dd987f2b33b2`  
		Last Modified: Tue, 10 Nov 2026 18:52:53 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42dcb28f20f37be2cee7d9324e4276c341626b222aa0ba9f41bbc47374be47e`  
		Last Modified: Tue, 10 Nov 2026 18:52:53 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff5ffc95a0f5818dad3d8b6c62219e5688ffc364c72d290d9080e04b0e45024b`  
		Last Modified: Tue, 10 Nov 2026 18:52:53 GMT  
		Size: 70.7 KB (70707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db1333d84231590a8a1c48c01530cf08ab3060faf5c529113655120a004dd4d`  
		Last Modified: Tue, 10 Nov 2026 18:52:51 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd372f36d23d71bc3c0709c0c44e4a0746e14faff0c35267207daa3bcda61593`  
		Last Modified: Tue, 10 Nov 2026 18:52:51 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2e1629020f49b8528944712df585a2ce49d74fabce40dafb0306902e27c3a7`  
		Last Modified: Tue, 10 Nov 2026 18:53:01 GMT  
		Size: 73.2 MB (73178403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c4eee062ce12dd2e86071e2da4d09219f20e042ae5e5c706c0e8c78a495aa15`  
		Last Modified: Tue, 10 Nov 2026 18:52:51 GMT  
		Size: 73.3 KB (73281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45107f93fa8a478ae95e9135182d98841d881616397cf65de9b3eaad69632b12`  
		Last Modified: Tue, 10 Nov 2026 18:52:51 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
