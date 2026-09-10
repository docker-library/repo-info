## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:31999b43a6bdd31ad459c9beda103f266590f493861621be16858b1c22e68a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `golang:1-nanoserver` - windows version 10.0.26100.33438; amd64

```console
$ docker pull golang@sha256:ce75c2c0dea4b22f6bb5998aa7a93dbbf6c8c702bb6574a2a5c2678a2a51ba2b
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270842121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac94307df166139efa69697b9002689bd50f19aadd967c19ee222567bd194d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 05 Sep 2026 17:17:13 GMT
RUN Apply image 10.0.26100.33438
# Wed, 09 Sep 2026 23:25:39 GMT
SHELL [cmd /S /C]
# Wed, 09 Sep 2026 23:25:39 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 23:25:40 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:25:42 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 09 Sep 2026 23:25:42 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:25:43 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 09 Sep 2026 23:27:05 GMT
COPY dir:79b4b1cd5c648eb47ac0ae2a33ee9106253015a6513a3de9cab1144798e7e1e7 in C:\Program Files\Go 
# Wed, 09 Sep 2026 23:27:08 GMT
RUN go version
# Wed, 09 Sep 2026 23:27:08 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:9ffe38ef6192375802d3116e36dfcdc637fc9ad5963108298a8d4fbab0f7f7bd`  
		Last Modified: Tue, 08 Sep 2026 21:19:10 GMT  
		Size: 197.7 MB (197650532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339b8891384489d91e0dfbe69ccdfae547cc996a17a885747bb86efc247adcf9`  
		Last Modified: Wed, 09 Sep 2026 23:27:25 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4c44a2359a036302fae4592817cacab5f41603656900787bf07190a64dabe6`  
		Last Modified: Wed, 09 Sep 2026 23:27:25 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81b7f0a277a5767c3ac5e7718eee815bc54086e6a1c1ffaf00f0b5a756a999a`  
		Last Modified: Wed, 09 Sep 2026 23:27:25 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06290ff5d0ec1e4f01bad09faf6f4d2c42045f3a5fb38d6a40e823f440fcf79c`  
		Last Modified: Wed, 09 Sep 2026 23:27:24 GMT  
		Size: 71.8 KB (71846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a859879fcf4a30d0c65cf7b900f0cf539cc80a78aebb53134cc66f3bd9ab221a`  
		Last Modified: Wed, 09 Sep 2026 23:27:23 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f232355ccbb7d44dd3a304c881f9a577e8913c66fe755336a603990a0c5d51`  
		Last Modified: Wed, 09 Sep 2026 23:27:23 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1420ebfb86e8691f583f5918186286150522defe026cdc3df6c9d95efc2a2ed7`  
		Last Modified: Wed, 09 Sep 2026 23:27:34 GMT  
		Size: 73.0 MB (73034590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df25d2cc5ef45569e50a1fe371fba8a3f930eff8c05b9dc7c25d630b74b1aa7`  
		Last Modified: Wed, 09 Sep 2026 23:27:23 GMT  
		Size: 78.8 KB (78754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49d186170884593897c1bb1e96e55fb8fbe641a666844e999e710723794ff2b8`  
		Last Modified: Wed, 09 Sep 2026 23:27:23 GMT  
		Size: 1.2 KB (1240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:1-nanoserver` - windows version 10.0.20348.5622; amd64

```console
$ docker pull golang@sha256:9988c1ce9cb6952904ff52578eeb00108f409d7c28ecfed07d7b40fecf99c2c4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197833980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20c954b34fc2b9054fcf134f17636924039c7ce203549985c5217772be825e11`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Sat, 05 Sep 2026 23:30:19 GMT
RUN Apply image 10.0.20348.5622
# Wed, 09 Sep 2026 23:23:20 GMT
SHELL [cmd /S /C]
# Wed, 09 Sep 2026 23:23:20 GMT
ENV GOPATH=C:\go
# Wed, 09 Sep 2026 23:23:21 GMT
USER ContainerAdministrator
# Wed, 09 Sep 2026 23:23:23 GMT
RUN setx /m PATH "%GOPATH%\bin;C:\Program Files\Go\bin;%PATH%"
# Wed, 09 Sep 2026 23:23:23 GMT
USER ContainerUser
# Wed, 09 Sep 2026 23:23:24 GMT
ENV GOLANG_VERSION=1.27.1
# Wed, 09 Sep 2026 23:24:24 GMT
COPY dir:79b4b1cd5c648eb47ac0ae2a33ee9106253015a6513a3de9cab1144798e7e1e7 in C:\Program Files\Go 
# Wed, 09 Sep 2026 23:24:27 GMT
RUN go version
# Wed, 09 Sep 2026 23:24:28 GMT
WORKDIR C:\go
```

-	Layers:
	-	`sha256:7a186637240e3f30c6aa7d6f30e8bd943c30d8f628cb7edd0c45cff6ca160cb4`  
		Last Modified: Tue, 08 Sep 2026 20:30:33 GMT  
		Size: 124.6 MB (124637397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e2d3ac7102782fb1d0c25b297339a01590665b5818fe5c6fc14618b04b3de3`  
		Last Modified: Wed, 09 Sep 2026 23:24:37 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0606a5e50d08eb236c204475f9add35b27e906b1c63eff3bb1dbfd30b58fdf0`  
		Last Modified: Wed, 09 Sep 2026 23:24:37 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492cd7a6109bdf48f91a107468e4f9c425979366ce9db9027b11654a4762719d`  
		Last Modified: Wed, 09 Sep 2026 23:24:37 GMT  
		Size: 1.1 KB (1084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169d08294316de871c2dc7bfaeefdd0a79861ca2e336045eebe2ab77a06e47e`  
		Last Modified: Wed, 09 Sep 2026 23:24:37 GMT  
		Size: 77.4 KB (77399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6c00cad9b704c7452d0565a335cbb6c97fb878a4cfad00d9767373148f2dbf`  
		Last Modified: Wed, 09 Sep 2026 23:24:35 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6064420428e6514576df25f593e96ca885d7c64d09fab7741dacc9805346c71`  
		Last Modified: Wed, 09 Sep 2026 23:24:35 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b814ec5943c8f499271ef10ad6c6e41a7d60f20a35b074369f8a6370d679c7`  
		Last Modified: Wed, 09 Sep 2026 23:24:46 GMT  
		Size: 73.0 MB (73029048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb75bb396398ab0d771b6ed5f56958abd096ec36f130e37cc6a96eac69db7d7`  
		Last Modified: Wed, 09 Sep 2026 23:24:35 GMT  
		Size: 83.5 KB (83539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9401083ad4ab9edb3f4c314780f76710cc60092c8cf28ea9785701180e072d91`  
		Last Modified: Wed, 09 Sep 2026 23:24:35 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
