## `traefik:v2-nanoserver-ltsc2022`

```console
$ docker pull traefik@sha256:be554e96192f04038fc316521c0add5052774df00695a917519d36eb840bfb11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5761; amd64

### `traefik:v2-nanoserver-ltsc2022` - windows version 10.0.20348.5761; amd64

```console
$ docker pull traefik@sha256:b516b04e80421fad067bfb54aabafa820f6aa24cb411e5edc303d1b32f012d19
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.0 MB (177011962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5e4bb81f07917729ae810d396b0d77469d81b36cd3f4c20746e9cf60e1724b`
-	Entrypoint: `["\/traefik"]`

```dockerfile
# Tue, 13 Oct 2026 04:22:17 GMT
RUN Apply image 10.0.20348.5761
# Tue, 20 Oct 2026 19:14:03 GMT
RUN cmd /S /C #(nop) COPY file:61126b4d5db2910e55a7cb1538434a2b15f542fd25b015021d1f9fc00276eada in \ 
# Tue, 20 Oct 2026 19:14:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 80
# Tue, 20 Oct 2026 19:14:05 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["/traefik"]
# Tue, 20 Oct 2026 19:14:06 GMT
RUN cmd /S /C #(nop)  LABEL org.opencontainers.image.vendor=Traefik Labs org.opencontainers.image.url=https://traefik.io org.opencontainers.image.source=https://github.com/traefik/traefik org.opencontainers.image.title=Traefik org.opencontainers.image.description=A modern reverse-proxy org.opencontainers.image.version=v2.11.60 org.opencontainers.image.documentation=https://docs.traefik.io
```

-	Layers:
	-	`sha256:ba1851c19f035e2f5883c5e7fce4d65844d83948a190864301703f42f404b937`  
		Last Modified: Tue, 13 Oct 2026 18:39:44 GMT  
		Size: 125.8 MB (125795996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649267363ee4459b37d503fcb60af484bdf99768c010f961c375b3c51279a716`  
		Last Modified: Tue, 20 Oct 2026 19:14:30 GMT  
		Size: 51.2 MB (51212757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a1c1dd94612c80170cba769ce83dc992bc52f182baaa746038efea27704b106`  
		Last Modified: Tue, 20 Oct 2026 19:14:10 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a9adc91cca9ef29ff9cacf82adb434b3a7a5ace5fbb7760676a2accb2a39c4`  
		Last Modified: Tue, 20 Oct 2026 19:14:10 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92b6c30c1dfbf6afe37128248bce072711881433d42ed5307c7f0aa80ecc951`  
		Last Modified: Tue, 20 Oct 2026 19:14:10 GMT  
		Size: 1.1 KB (1072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
