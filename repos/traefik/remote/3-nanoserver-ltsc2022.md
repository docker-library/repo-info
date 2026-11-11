## `traefik:3-nanoserver-ltsc2022`

```console
$ docker pull traefik@sha256:1e1bcdbad9ec5aeb5c48a6eb857129f7743a25c6c175f5d47c4df1ee6a1ebdaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5870; amd64

### `traefik:3-nanoserver-ltsc2022` - windows version 10.0.20348.5870; amd64

```console
$ docker pull traefik@sha256:17bea401f40ffeaa668bb0d767d83db3f1bdd41c16669ebd64cab7c634237f36
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177846634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5725891c7855593d976449fd179d3306a25d7ba78b9a7e93f8e945e4bf246aa2`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Mon, 09 Nov 2026 05:03:42 GMT
RUN Apply image 10.0.20348.5870
# Wed, 11 Nov 2026 22:42:38 GMT
RUN cmd /S /C #(nop) COPY file:99855b7f56a4d6c347f6f7791a4844e1b43daa3134572f53cdb80e36dd638f33 in \ 
# Wed, 11 Nov 2026 22:42:41 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Wed, 11 Nov 2026 22:42:41 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Wed, 11 Nov 2026 22:42:41 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v3.7.18 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:0687146101aa7c5a79f3f4fceaa6abc664da260fccc602e0f5edd412320534a4`  
		Last Modified: Tue, 10 Nov 2026 23:37:31 GMT  
		Size: 126.3 MB (126284980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1acb2316a5bec1ab1410f042563cb288ac22fc9ec2b3f7f500019ac0520e830`  
		Last Modified: Wed, 11 Nov 2026 22:42:53 GMT  
		Size: 51.6 MB (51558472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bac8375df8517fd127514e78d25da9970feee7acaf61ad99b0418b4dac282fb`  
		Last Modified: Wed, 11 Nov 2026 22:42:45 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a70f9db13c5423112966933d4bc4e29478d4a5eb75e01b8e5203eb83dbadaf`  
		Last Modified: Wed, 11 Nov 2026 22:42:45 GMT  
		Size: 1.0 KB (1044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afba9c8a4b59ce5b29aad02767327647544895021db23ee7ad3edb9e42d39d44`  
		Last Modified: Wed, 11 Nov 2026 22:42:46 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
