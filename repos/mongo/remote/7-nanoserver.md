## `mongo:7-nanoserver`

```console
$ docker pull mongo@sha256:ff94f5c25e90f313a6ccf81427439b463bd51ec5cdea3d479cd4178a330fb5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `mongo:7-nanoserver` - windows version 10.0.20348.5761; amd64

```console
$ docker pull mongo@sha256:1bf90340e9c1a679e90898031860e47083500a174026c935404120e30cc654d6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **750.6 MB (750600812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e98d8c1f3931cd4ed01b923b69c0a7a91c2097b8845b71147e542e6df59544b`
-	Default Command: `["mongod","--bind_ip_all"]`
-	`SHELL`: `["cmd","\/S","\/C"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Wed, 14 Oct 2026 00:22:58 GMT
SHELL [cmd /S /C]
# Wed, 14 Oct 2026 00:22:59 GMT
USER ContainerAdministrator
# Wed, 14 Oct 2026 00:23:01 GMT
RUN setx /m PATH "C:\mongodb\bin;%PATH%"
# Wed, 14 Oct 2026 00:23:02 GMT
USER ContainerUser
# Wed, 14 Oct 2026 00:27:03 GMT
COPY multi:540d6dd70b1e7484f1958dc08b337aeb56cf8a92fe38be4c279dd406990d6935 in C:\Windows\System32\ 
# Wed, 14 Oct 2026 00:27:03 GMT
ENV MONGO_VERSION=7.0.45
# Wed, 14 Oct 2026 00:27:36 GMT
COPY dir:cfe1deecaca9e42e2e5b9030e32d8321e55c89ba272933ee620b19fa5a0029e1 in C:\mongodb 
# Wed, 14 Oct 2026 00:27:56 GMT
RUN mongod --version
# Wed, 14 Oct 2026 00:27:56 GMT
VOLUME [C:\data\db C:\data\configdb]
# Wed, 14 Oct 2026 00:27:57 GMT
EXPOSE 27017
# Wed, 14 Oct 2026 00:27:58 GMT
CMD ["mongod" "--bind_ip_all"]
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8609b54c0b0f684b28656944354c9a3338d96fa61dd19f486e7df890c61ce957`  
		Last Modified: Wed, 14 Oct 2026 00:24:48 GMT  
		Size: 1.1 KB (1086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47e7f7b27888c4c49af5f51920f318c627ade76edc3a4f9aa9ab148cf075564`  
		Last Modified: Wed, 14 Oct 2026 00:24:48 GMT  
		Size: 1.1 KB (1077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:213616d702b1d2977f7316591b72dfea9b32a5cd518471d5c6d29310efb94b9f`  
		Last Modified: Wed, 14 Oct 2026 00:24:46 GMT  
		Size: 77.2 KB (77195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e551482dafc8e58e0c121ed5ef72d7795a5584bf5523909d36ef8fe3032b2e6`  
		Last Modified: Wed, 14 Oct 2026 00:24:46 GMT  
		Size: 1.1 KB (1075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c8492272982391e8b8d7f2807bfb47ea7a5e4c4b1574276b7c7fd68cd0e049`  
		Last Modified: Wed, 14 Oct 2026 00:28:05 GMT  
		Size: 275.2 KB (275211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1351cd5a114331a725bc6777d02df6a83938a0eb7388f61f55c4fa51ec37f8`  
		Last Modified: Wed, 14 Oct 2026 00:28:05 GMT  
		Size: 1.1 KB (1080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bfbfa1e748319a8e606e6e50875e0480c18d2aa3c06ed368e3e06c0faac0409`  
		Last Modified: Wed, 14 Oct 2026 00:28:53 GMT  
		Size: 624.4 MB (624357773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af151f88521566ab3bb99de3aea001cb0ff2b32f985fd30cd73297b4966a2655`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 87.1 KB (87142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88e38749ffc335c2f1b9dd487926a51cf3e8155a14c0270b65d264f1d28c8b1`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8000c504fc68834117c45e0ca7cf884a900ad2515b731e28fa3067d4edf0a77e`  
		Last Modified: Wed, 14 Oct 2026 00:28:03 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d911e978ec8a18e698222ba53daba13b1ff52eb57e4ce43fefe8d3090dfb13f`  
		Last Modified: Wed, 14 Oct 2026 00:28:04 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
