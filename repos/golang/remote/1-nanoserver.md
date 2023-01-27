## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:86e2ec463e33551e1b1f6954ffcebe472093d82baa4887768e22d12815a36e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.20348.1487; amd64
	-	windows version 10.0.17763.3887; amd64

### `golang:1-nanoserver` - windows version 10.0.20348.1487; amd64

```console
$ docker pull golang@sha256:10fa7c0338e6df848990fa0746d77e07e2f4089fd15019c3d3d63d01a07f76ab
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279568785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78d1a450e01d1ed7c92ff6e383594cfee8c12df1f2e12ec99bf49751d4ea85eb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Fri, 06 Jan 2023 23:36:49 GMT
RUN Apply image 10.0.20348.1487
# Thu, 12 Jan 2023 03:07:34 GMT
SHELL [cmd /S /C]
# Thu, 12 Jan 2023 03:07:34 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 03:07:36 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 03:08:26 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 12 Jan 2023 03:08:27 GMT
USER ContainerUser
# Thu, 12 Jan 2023 03:24:14 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:27:03 GMT
COPY dir:10c8e524c1346a2fb1d71240899f8be8a5c84e42a02e32a993c68761bb742a41 in C:\Program Files\Go 
# Thu, 12 Jan 2023 03:27:54 GMT
RUN go version
# Thu, 12 Jan 2023 03:27:55 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:83e9437e818022c1c28f0e07002dd46995c8614e62b9366138fa23b94f43d9ad`  
		Last Modified: Thu, 12 Jan 2023 02:51:06 GMT  
		Size: 122.1 MB (122099566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e0e139d1c09b743fda52fd8a19bdc3c829ac2aed829d2e16beec0fbbd5dd5d`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4e8737aebbf1207ce8659de66f3d575194350678800b69a174bc516a329dea`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.1 KB (1132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611ab0a2da8d60a13ec497aa6f89b840f936a6c6f7450f0386f808c000f44970`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba3c63725f8ca8d354e6c46948328eda4a7c428e21bfedbd5005b674e23fbf73`  
		Last Modified: Thu, 12 Jan 2023 03:48:59 GMT  
		Size: 84.0 KB (84048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f42b910fe2ecce44f108e85c2c03f9acb106e857aa6b7f2e4622891aa961b4bf`  
		Last Modified: Thu, 12 Jan 2023 03:48:57 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860f6a6e3af5d5c0d15a8ea922ed5a97bece37365a97119826aa53346d77fdfb`  
		Last Modified: Thu, 12 Jan 2023 03:53:27 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633159a2339ac9f56465a205b10c54c180771755f8ee54985e6f9746a64af5e5`  
		Last Modified: Thu, 12 Jan 2023 03:54:26 GMT  
		Size: 157.3 MB (157328841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c6b72b61e34da60befbb519f3ef3bd10c1d1baf4b38dd9e831e7f525414aab`  
		Last Modified: Thu, 12 Jan 2023 03:53:27 GMT  
		Size: 49.3 KB (49265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee9e617fe2c810d653270f26768b8aa352f078bf1aa2b3fb4fa7715a4dbc176`  
		Last Modified: Thu, 12 Jan 2023 03:53:27 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-nanoserver` - windows version 10.0.17763.3887; amd64

```console
$ docker pull golang@sha256:46c1158efb186aa185d2601c593ae282927c29f1676956f24d67773ebb21a56e
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.1 MB (264144421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d8a752a92e629404a41a0d94399cc35ec2215260946ca85158727777025c13`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 03:12:03 GMT
SHELL [cmd /S /C]
# Thu, 12 Jan 2023 03:12:04 GMT
ENV GOPATH=C:\go
# Thu, 12 Jan 2023 03:12:05 GMT
USER ContainerAdministrator
# Thu, 12 Jan 2023 03:12:45 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 12 Jan 2023 03:12:46 GMT
USER ContainerUser
# Thu, 12 Jan 2023 03:28:14 GMT
ENV GOLANG_VERSION=1.19.5
# Thu, 12 Jan 2023 03:30:59 GMT
COPY dir:10c8e524c1346a2fb1d71240899f8be8a5c84e42a02e32a993c68761bb742a41 in C:\Program Files\Go 
# Thu, 12 Jan 2023 03:31:41 GMT
RUN go version
# Thu, 12 Jan 2023 03:31:42 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:070163efc0c5001bb289dc56cc98506d4d920f7b1eecdd95fad44822625d1509`  
		Last Modified: Thu, 12 Jan 2023 03:50:00 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d908cb6633560a738f3ce1e17a0306cf4ee9877401d48e0c9ebe2a7944ee10`  
		Last Modified: Thu, 12 Jan 2023 03:50:00 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c4ad2b51c3b88ecd595a75791cb53fc2784f0dc8d9fe092646607204279f66`  
		Last Modified: Thu, 12 Jan 2023 03:50:00 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf177a4845ad42b50efffc22fce1b73e723e3f5c7c4b83df39421a73b1f4df8`  
		Last Modified: Thu, 12 Jan 2023 03:50:00 GMT  
		Size: 68.8 KB (68808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ed09b6205f457604da9ac92775ee05a2bbf4d3157c4d0b9df1eaa549606b7a`  
		Last Modified: Thu, 12 Jan 2023 03:49:57 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f073321f7d986d057d1d6b033e7e8bb60a2c34a9498a746b28392b6a76c6359`  
		Last Modified: Thu, 12 Jan 2023 03:54:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e044318b9fd0960c3e8b6e851c5a85a78b4674756e58009c4eaddd033820771`  
		Last Modified: Thu, 12 Jan 2023 03:55:45 GMT  
		Size: 157.3 MB (157332548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb09c8884e8f0130df2285b1a3ce9fae4cf9319d7eec3886a0d79a163e42b720`  
		Last Modified: Thu, 12 Jan 2023 03:54:41 GMT  
		Size: 69.9 KB (69854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fa00a89726da9ee3d53f762af61f3d909b243da07888a80feb22e5569ccc86`  
		Last Modified: Thu, 12 Jan 2023 03:54:41 GMT  
		Size: 1.3 KB (1300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
