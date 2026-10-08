## `golang:nanoserver-ltsc2022`

```console
$ docker pull golang@sha256:360b3e32ce3628f5f27a4d98a5f3048a3931c2e0ad0981db84ae8e7d036ce299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `golang:nanoserver-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull golang@sha256:5822086696fcab588a701d1a17bcd753fc10ddc5d2fe351f3e5f80b5639fc085
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.9 MB (197920561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5d2b152bba988424cdb91f9850cbcc2b489f5d36a7a30ebe9e0400f7100db7e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Thu, 08 Oct 2026 18:00:44 GMT
SHELL [cmd /S /C]
# Thu, 08 Oct 2026 18:00:44 GMT
ENV GOPATH=C:\go
# Thu, 08 Oct 2026 18:00:45 GMT
USER ContainerAdministrator
# Thu, 08 Oct 2026 18:00:59 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Thu, 08 Oct 2026 18:00:59 GMT
USER ContainerUser
# Thu, 08 Oct 2026 18:01:00 GMT
ENV GOLANG_VERSION=1.27.2
# Thu, 08 Oct 2026 18:04:44 GMT
COPY dir:771b75ec9ae87ed9ca4e37455b101cedb35120030ac8fba2cc7c11f77b616a99 in C:\Program Files\Go 
# Thu, 08 Oct 2026 18:04:47 GMT
RUN go version
# Thu, 08 Oct 2026 18:04:49 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add89e7c418d699860771c1acbb8a808277db1adfd38ff5fb294a03a0a75dd7d`  
		Last Modified: Thu, 08 Oct 2026 18:04:57 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dab3b2c64c2e1b0342801c1d4542a7c96b1e67ed1f117db655d927ef29ba3a`  
		Last Modified: Thu, 08 Oct 2026 18:04:57 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f468d340b4ed943aa48d2e3c7763c5efcc5a1c21dd69082cddef7fe771d46914`  
		Last Modified: Thu, 08 Oct 2026 18:04:57 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bc47140eb758424c832900ead7c720944544153b07f2c04412d4d7ef7f2505`  
		Last Modified: Thu, 08 Oct 2026 18:04:57 GMT  
		Size: 81.3 KB (81284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b5f471c49b694a1a6ba7a6796e6c4058dad79b87a0fedf99352beaefd4cce0`  
		Last Modified: Thu, 08 Oct 2026 18:04:56 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5696c02ed60c1522b017f2427bb6c961e14a370e2bbada117645f3ca52d69d`  
		Last Modified: Thu, 08 Oct 2026 18:04:56 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302defc1b745d7e955b84c84a5967ebeb4e5061162241c0243c02883ee6f45d5`  
		Last Modified: Thu, 08 Oct 2026 18:05:06 GMT  
		Size: 73.1 MB (73110097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c5772285855fb9e27af03bc3dd2ea196bbfda65cb9af012e5efb1d9c220015`  
		Last Modified: Thu, 08 Oct 2026 18:04:56 GMT  
		Size: 85.2 KB (85202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39af2ce5984a909802f854c6f0ddade0382157b96830eaca3203c7ba62186f1a`  
		Last Modified: Thu, 08 Oct 2026 18:04:56 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
